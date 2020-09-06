import 'dart:async';

import 'package:cato_feed/domain/core/errors.dart';
import 'package:cato_feed/domain/core/i_logger.dart';
import 'package:cato_feed/domain/posts/post.dart';
import 'package:cato_feed/infrastructure/core/db/moor/extensions.dart';
import 'package:cato_feed/infrastructure/core/remote/graphql/network_client.dart';
import 'package:cato_feed/infrastructure/core/remote/graphql/queries.dart';
import 'package:connectivity/connectivity.dart';
import 'package:cato_feed/domain/core/result.dart';
import 'package:injectable/injectable.dart';
import 'package:cato_feed/domain/core/failure.dart';
import 'package:cato_feed/domain/auth/user.dart';
import 'package:cato_feed/domain/topic/topic.dart';
import 'package:kt_dart/collection.dart';

@lazySingleton
class Network {
  NetworkClient _client;
  String _apiEndpoint ;

  /// JWT token for the authenticated queries.
  /// Set this to null if don't want to add auth header.
  String _jwtToken;
  String _jwtHeaderKey = "x-auth-token";
  Connectivity _connectivity;
  ILogger logger;

  Network(this.logger, this._connectivity, @Named('ApiEndpoint') this._apiEndpoint) {
    _initializeClient();
  }

  /// Initializes the [Network] and it's internal state.
  void _initializeClient() {
    _client = NetworkClient(
        apiEndpoint: _apiEndpoint,
        jwtHeaderKey: _jwtHeaderKey,
        logger: logger,
        jwtResolver: () async {
          return _jwtToken;
        },
        isConnected: () async {
          ConnectivityResult connectivityResult =
              await _connectivity.checkConnectivity();
          return connectivityResult == ConnectivityResult.mobile ||
              connectivityResult == ConnectivityResult.wifi;
        });
  }

  /// Updates [_jwtToken]
  void updateJwt(String jwtToken) {
    this._jwtToken = jwtToken;
  }

  /// Returns minimum version code [int] need to maintain by client
  Future<Result<Failure, int>> getMinimumVersion() async {
    var result = await _client.query(GqlQueries.versionCheckQuery);
    if(result.hasFailed()) {
      return Result.fail(result.failure);
    }
    try {
      int minimumVersionCode = result.data["androidVersionCode"]["data"];
      return Result.data(minimumVersionCode);
    } catch(error) {
      return Result.fail(Failure.error(ServerError(detail: 'Error checking version update.')));
    }
  }

  /// Authenticates to backend and returns [User]
  Future<Result<Failure, User>> authenticate(
      {String name,
      String email,
      String googleId,
      String avatar,
      String accessToken}) async {
    var result = await _client.mutation(
        GqlQueries.googleLoginMutation,
        GqlQueries.googleLoginVariables(
            name, email, googleId, avatar, accessToken));

    if (result.hasFailed()) return Result.fail(result.failure);

    dynamic response = result.data;

    if (response == null) {
      return Result.fail(Failure.error(ServerError(detail: 'Login response failed.')));
    }

    // convert response to User
    var user = UserDTO.fromResponse(response, googleId);
    if(user == null) {
      return Result.fail(Failure.error(ServerError(detail: 'Unable to parse user login response.')));
    } else {
      return Result.data(user);
    }
  }

  /// Returns list of all [Topic]s.
  Future<Result<Failure, KtList<Topic>>> getAllTopics() async {
    var result = await _client.query(GqlQueries.allTopicQuery);

    if (result.hasFailed()) return Result.fail(result.failure);

    dynamic response = result.data;

    if (response == null) {
      return Result.fail(Failure.error(ServerError(detail: 'Unable to load topics.')));
    }

    var topics = TopicDTO.fromResponse(response['allTopic']);
    if(topics == null) {
      return Result.fail(Failure.error(ServerError(detail: 'Unable to parse topic response.')));
    }

    return Result.data(topics);
  }

  // Internal common function to process user profile response
  Future<Result<Failure, KtList<Topic>>> _processUserProfile(
      Result<Failure, dynamic> result,
      String serverErrorType,
      Function(dynamic response) onResponse
      ) async {

    if(result.hasFailed()) return Result.fail(result.failure);

    dynamic response = result.data;

    if (response == null) {
      return Result.fail(Failure.error(ServerError(detail: 'Unable to $serverErrorType user profile.')));
    }

    var finalResponse = onResponse(response)['topics'];
    var topics = TopicDTO.fromResponse(finalResponse);
    if(topics == null) {
      return Result.fail(Failure.error(ServerError(detail: 'Unable to parse user profile response.')));
    }

    return Result.data(topics);
  }

  /// Returns user profile (user selected topics)
  Future<Result<Failure, KtList<Topic>>> getUserProfile() async {
    var result = await _client.query(GqlQueries.userProfileQuery);
    return _processUserProfile(result, 'load', (response) => response['userProfile']);
  }

  /// Creates and returns user profile.
  Future<Result<Failure, KtList<Topic>>> createUserProfile(
      List<String> topicIds) async {
    var result = await _client.mutation(GqlQueries.createUserProfileMutation,
        GqlQueries.createUserProfileVariables(topicIds));

    return _processUserProfile(result, 'create', (response) => response['createUserProfile']);
  }

  /// Updates and returns user profile.
  Future<Result<Failure, KtList<Topic>>> updateUserProfile(
      List<String> topicIds) async {
    var result = await _client.mutation(GqlQueries.updateUserProfileMutation,
        GqlQueries.updateUserProfileVariables(topicIds));

    return _processUserProfile(result, 'update', (response) => response['updateUserProfile']);
  }

  /// Returns [KtList]<[Post]> using skip, limit and optional topicsIds.
  Future<Result<Failure, KtList<Post>>> getPosts(int skip, int limit, {List<String> topicIds}) async{
    var query;
    var variables;
    if(topicIds == null || topicIds.isEmpty) {
      query = GqlQueries.videosQuery;
      variables = GqlQueries.videosVariables(skip, limit);
    } else {
      query = GqlQueries.videosByTopicsQuery;
      variables = GqlQueries.videosByTopicsVariables(skip, limit, topicIds);
    }
    var result = await _client.query(query,
        variables: variables);

    if(result.hasFailed()) return Result.fail(result.failure);

    dynamic response = result.data;

    if (response == null) {
      return Result.fail(Failure.error(ServerError(detail: 'Unable to load videos.')));
    }

    var posts = PostDTO.listFromResponse(response);
    if(posts == null) {
      return Result.fail(Failure.error(ServerError(detail: 'Unable to parse videos response.')));
    }

    return Result.data(posts);
  }

  /// Returns [Post] from postId
  Future<Result<Failure, Post>> getPostById(String postId) async {
    var result = await _client.query(GqlQueries.videoByIdQuery,
        variables: GqlQueries.videoByIdVariables(postId));

    if(result.hasFailed()) return Result.fail(result.failure);

    if (result.data == null) {
      return Result.fail(Failure.error(ServerError(detail: 'Unable to load video.')));
    }

    var post = PostDTO.fromResponse(result.data['videoById']);
    if(post == null) {
      return Result.fail(Failure.error(ServerError(detail: 'Unable to parse video response.')));
    }

    return Result.data(post);
  }

}
