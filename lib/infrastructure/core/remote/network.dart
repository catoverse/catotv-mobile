import 'dart:async';

import 'package:cato_feed/domain/auth/user_profile.dart';
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
  String _apiEndpoint;

  /// JWT token for the authenticated queries.
  /// Set this to null if don't want to add auth header.
  String _jwtToken;
  String _jwtHeaderKey = "x-auth-token";
  Connectivity _connectivity;
  ILogger logger;

  Network(this.logger, this._connectivity,
      @Named('ApiEndpoint') this._apiEndpoint) {
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

  /// Returns minimum version code for android [int] need to maintain by client
  Future<Result<Failure, int>> getMinimumVersionAndroid() async {
    var result = await _client.query(GqlQueries.queryAndroidVersionCode);
    if (result.hasFailed()) {
      return Result.fail(result.failure);
    }
    try {
      int minimumVersionCode = result.data["androidVersionCode"]["data"];
      return Result.data(minimumVersionCode);
    } catch (error) {
      return Result.fail(
          Failure.error(ServerError(detail: 'Error checking version update.')));
    }
  }

  /// Returns minimum version code for android [int] need to maintain by client
  Future<Result<Failure, int>> getMinimumVersionIos() async {
    var result = await _client.mutation(GqlQueries.mutationIosVersionCode);
    if (result.hasFailed()) {
      return Result.fail(result.failure);
    }
    try {
      int minimumVersionCode = result.data["iosVersionCode"]["data"];
      return Result.data(minimumVersionCode);
    } catch (error) {
      return Result.fail(
          Failure.error(ServerError(detail: 'Error checking version update.')));
    }
  }

  /// Returns list of recommended videos for the user.
  Future<Result<Failure, KtList<Post>>> getUserRecommendationVideos(
      String userId) async {
    var result = await _client.query(GqlQueries.queryUserRecommendation,
        variables: GqlQueries.createMapForUserRecommendation(userId));

    if (result.hasFailed()) return Result.fail(result.failure);

    dynamic response = result.data;

    if (response == null) {
      return Result.fail(Failure.error(ServerError(
          detail: 'Failed to get recommended videos for the user.')));
    }

    var posts = PostDTO.listFromResponse(response['userRecommendation']);

    if (posts == null) {
      return Result.fail(Failure.error(
          ParserError(detail: "Unable to parse recommended videos.")));
    }

    return Result.data(posts);
  }

  /// Returns list of recommended videos for the user by topic.
  Future<Result<Failure, KtList<Post>>> getUserRecommendationVideosByTopic(
      String userId, String topicId) async {
    var result = await _client.query(GqlQueries.queryUserRecommendationByTopic,
        variables:
            GqlQueries.createMapForUserRecommendationByTopic(userId, topicId));

    if (result.hasFailed()) return Result.fail(result.failure);

    dynamic response = result.data;

    if (response == null) {
      return Result.fail(Failure.error(ServerError(
          detail:
              'Failed to get recommended videos for this topic for the user.')));
    }

    var posts = PostDTO.listFromResponse(response['userRecommendationByTopic']);
    if (posts == null) {
      return Result.fail(Failure.error(
          ParserError(detail: "Unable to parse recommended posts for the topic.")));
    }
    return Result.data(posts);
  }

  /// Returns list of all [Topic]s.
  Future<Result<Failure, KtList<Topic>>> getAllTopics() async {
    var result = await _client.query(GqlQueries.queryAllTopic);

    if (result.hasFailed()) return Result.fail(result.failure);

    dynamic response = result.data;

    if (response == null) {
      return Result.fail(
          Failure.error(ServerError(detail: 'Unable to load topics.')));
    }

    var topics = TopicDTO.fromResponse(response['allTopic']);
    if (topics == null) {
      return Result.fail(Failure.error(
          ParserError(detail: 'Unable to parse topic response.')));
    }

    return Result.data(topics);
  }

  /// Returns the UserProfile
  Future<Result<Failure, UserProfile>> getUserProfile(String userId) async {
    var result = await _client.query(GqlQueries.queryUserProfile,
        variables: GqlQueries.createMapForUserProfile(userId));

    if (result.hasFailed()) return Result.fail(result.failure);

    return _processUserProfileResponse(result.data, 'createUserProfile');
  }

  /// Returns the list of posts by topics
  Future<Result<Failure, KtList<Post>>> getVideosByTopics(
      List<String> topics, int skip, int limit) async {
    var result = await _client.query(GqlQueries.queryVideoByTopics,
        variables: GqlQueries.createMapForVideoByTopics(topics, skip, limit));

    if (result.hasFailed()) return Result.fail(result.failure);

    dynamic response = result.data;

    if (response == null) {
      return Result.fail(Failure.error(
          ServerError(detail: 'Unable to get posts by topics.')));
    }

    var posts = PostDTO.listFromResponse(response["videoByTopics"]);
    if (posts == null) {
      return Result.fail(Failure.error(
          ParserError(detail: "Unable to parse posts for the topic.")));
    }
    return Result.data(posts);
  }

  /// Returns the post based on videoId
  Future<Result<Failure, Post>> getVideoById(String videoId) async {
    var result = await _client.query(GqlQueries.queryVideoByTopics,
        variables: GqlQueries.createMapForVideoById(videoId));

    if (result.hasFailed()) return Result.fail(result.failure);

    dynamic response = result.data;

    if (response == null) {
      return Result.fail(Failure.error(
          ServerError(detail: 'Unable to get post from its id.')));
    }

    var posts = PostDTO.fromResponse(response["videoById"]);
    if (posts == null) {
      return Result.fail(Failure.error(
          ParserError(detail: "Unable to parse post.")));
    }
    return Result.data(posts);
  }
  
  Future<Result<Failure, String>> generateNewAuthToken() async {
    var result = await _client.query(GqlQueries.queryGenerateNewToken);

    if (result.hasFailed()) return Result.fail(result.failure);

    dynamic response = result.data;

    if (response == null) {
      return Result.fail(Failure.error(
          ServerError(detail: 'Unable to generate new auth token for user.')));
    }
    
    return Result.data(response['generateNewToken']['token']);
  }

  /// Updates the user events
  Future<Result<Failure, String>> updateUserEvents(
      String userId, int duration, String timeStamp, String userEvent) async {
    var result = await _client.mutation(GqlQueries.mutationMqProducerUser,
        variables: GqlQueries.createMapForMqProducerUser(
            userId, duration, timeStamp, userEvent));

    if (result.hasFailed()) return Result.fail(result.failure);

    dynamic response = result.data;

    if (response == null) {
      return Result.fail(
          Failure.error(ServerError(detail: 'Unable to update user event.')));
    }

    return Result.data(response["MqProducerUser"]['message']);
  }

  /// Updates the user video events
  Future<Result<Failure, String>> updateUserVideoEvents(String userId,
      int duration, String timeStamp, String userEvent, String videoId) async {
    var result = await _client.mutation(GqlQueries.mutationMqProducerUserVideo,
        variables: GqlQueries.createMapForMqProducerUserVideo(
            userId, duration, timeStamp, userEvent, videoId));

    if (result.hasFailed()) return Result.fail(result.failure);

    dynamic response = result.data;

    if (response == null) {
      return Result.fail(Failure.error(
          ServerError(detail: 'Unable to update user video event.')));
    }

    return Result.data(response["MqProducerUserVideo"]['message']);
  }

  /// Google login Authenticates to backend and returns [User]
  Future<Result<Failure, User>> googleLogin(
      {String name,
      String email,
      String googleId,
      String avatar,
      String accessToken}) async {
    var result = await _client.mutation(GqlQueries.mutationGoogleLogin,
        variables: GqlQueries.createMapForGoogleLogin(
            name, email, googleId, avatar, accessToken));

    if (result.hasFailed()) return Result.fail(result.failure);

    return _processUserResponse(result.data, 'googleLogin', 'Google');
  }

  /// Apple login Authenticates to backend and returns [User]
  Future<Result<Failure, User>> appleLogin(
      {String name, String email, String authCode, bool useBundleId}) async {
    var result = await _client.mutation(GqlQueries.mutationAppleLogin,
        variables: GqlQueries.createMapForAppleLogin(
            name, email, authCode, useBundleId));

    if (result.hasFailed()) return Result.fail(result.failure);

    return _processUserResponse(result.data, 'appleLogin', 'Apple');

  }

  /// Create the user session based on the invite code.
  Future<Result<Failure, User>> sessionLogin({String name, String code}) async {
    var result = await _client.mutation(GqlQueries.mutationSessionLogin,
        variables: GqlQueries.createMapForSessionLogin(name, code));

    if (result.hasFailed()) return Result.fail(result.failure);

    return _processUserResponse(result.data, 'sessionLogin', 'Session');

  }

  Result<Failure, User> _processUserResponse(dynamic response, String key, String tag) {
    if (response == null) {
      return Result.fail(
          Failure.error(ServerError(detail: '$tag login response failed.')));
    }

    // convert response to User
    var user = UserDTO.fromResponse(response, key);
    if (user == null) {
      return Result.fail(Failure.error(ServerError(
          detail: '$tag login: Unable to parse user login response.')));
    } else {
      return Result.data(user);
    }
  }

  /// Generates Invite
  Future<Result<Failure, String>> generateInvite(String email) async {
    var result = await _client.mutation(GqlQueries.mutationGenerateInvite,
        variables: GqlQueries.createMapForGenerateInvite(email));

    if (result.hasFailed()) return Result.fail(result.failure);

    dynamic response = result.data;

    if (response == null) {
      return Result.fail(
          Failure.error(ServerError(detail: 'Failed to generate invite.')));
    }

    return Result.data(response['generateInvite']);
  }

  /// Add email to waitlist
  Future<Result<Failure, String>> addToWaitlist(String email) async {
    var result = await _client.mutation(GqlQueries.mutationAddToWaitlist,
        variables: GqlQueries.createMapForAddToWaitlist(email));

    if (result.hasFailed()) return Result.fail(result.failure);

    dynamic response = result.data;

    if (response == null) {
      return Result.fail(Failure.error(
          ServerError(detail: 'Failed to add email to waitlist.')));
    }

    return Result.data(response['addToWaitlist']['message']);
  }

  /// Creates and returns user profile.
  Future<Result<Failure, dynamic>> createUserProfile(String name, String userId,
      List<Map<String, dynamic>> selectedTopics) async {
    var result = await _client.mutation(GqlQueries.mutationCreateUserProfile,
        variables: GqlQueries.createMapForCreateUserProfile(
            name, userId, selectedTopics));

    if (result.hasFailed()) return Result.fail(result.failure);

    return _processUserProfileResponse(result.data, 'createUserProfile');
  }

  /// Updates and returns user profile.
  Future<Result<Failure, dynamic>> updateUserProfile(String name, String userId,
      List<Map<String, dynamic>> selectedTopics) async {
    var result = await _client.mutation(GqlQueries.mutationUpdateUserProfile,
        variables: GqlQueries.createMapForUpdateUserProfile(
            name, userId, selectedTopics));

    if (result.hasFailed()) return Result.fail(result.failure);

    return _processUserProfileResponse(result.data, 'updateUserProfile');

  }

  /// Updates userProfileCounters
  Future<Result<Failure, dynamic>> updateUserProfileCounters(
      String userId, String category, int duration, String data) async {
    var result = await _client.mutation(
        GqlQueries.mutationUpdateProfileCounters,
        variables: GqlQueries.createMapForUpdateProfileCounters(
            userId, category, duration, data));

    if (result.hasFailed()) return Result.fail(result.failure);

    return _processUserProfileResponse(result.data, 'updateProfileCounters');
  }

  Result<Failure, UserProfile> _processUserProfileResponse(dynamic response, String key) {
    if (response == null) {
      return Result.fail(
          Failure.error(ServerError(detail: 'Unable to get the userProfile')));
    }

    var userProfile = UserProfileDTO.fromResponse(response[key]);
    if(userProfile == null) {
      return Result.fail(Failure.error(ParserError(detail: 'Unable to parse user profile response.')));
    }
    return Result.data(userProfile);
  }

}
