import 'dart:io';

import 'package:feed/app/app.locator.dart';
import 'package:feed/app/app.logger.dart';
import 'package:feed/core/models/result/failure.dart';
import 'package:feed/core/models/result/result.dart';
import 'package:feed/core/models/app_models.dart';
import 'package:feed/remote/api/api_service.dart';
import 'package:feed/remote/client.dart';
import 'package:feed/remote/queries.dart';
import 'package:package_info/package_info.dart';

class APIServiceImpl implements APIService {
  final RemoteClient _client = locator<RemoteClient>();
  final PackageInfo _packageInfo = locator<PackageInfo>();
  final _log = getLogger("API Service");

  @override
  Future checkUpdateRequired() async {
    _log.v("checking if there's an app update required");

    Result result = Platform.isAndroid
        ? await _client.processQuery(query: GQLQueries.queryAndroidVersionCode)
        : await _client.mutation(GQLQueries.mutationIosVersionCode);

    if (result.isFailed) return result.failure;

    return _handleVersionUpdate(result.success["androidVersionCode"]["data"]);
  }

  bool _handleVersionUpdate(int apiVersion) {
    var currentVersion = int.parse(_packageInfo.version.split(".")[0]);

    return apiVersion > currentVersion;
  }

  @override
  Future performLogin({
    required String name,
    required String email,
    required String googleId,
    required String avatar,
    required String accessToken,
  }) async {
    _log.v("performing google login");

    Result<Failure, dynamic> result = await _client.mutation(
        GQLQueries.mutationGoogleLogin,
        variables: GQLQueries.createMapForGoogleLogin(
            name, email, googleId, avatar, accessToken));

    if (result.isFailed) return result.failure;

    Map<String, dynamic> json = result.success["googleLogin"]["user"];
    json["token"] = result.success["googleLogin"]["token"];

    return User.fromJson(json);
  }

  @override
  Future fetchTopics() async {
    _log.v("fetching allTopics from GraphQL");

    Result result = await _client.processQuery(query: GQLQueries.queryAllTopic);

    if (result.isFailed) return result.failure;

    return result.success["allTopic"];
  }

  @override
  Future requestInvite({required String email}) async {
    _log.v("adding $email to the waitlist");

    Result<Failure, dynamic> result = await _client.mutation(
        GQLQueries.mutationAddToWaitlist,
        variables: GQLQueries.createMapForRequestInvite(email));

    if (result.isFailed) return result.failure;

    return true;
  }

  @override
  Future getProfile({required String userId}) async {
    _log.v("fetching profile for User(id: $userId)");

    Result<Failure, dynamic> result = await _client.processQuery(
        query: GQLQueries.queryUserProfile,
        variables: GQLQueries.createMapForGetUserProfile(userId));

    if (result.isFailed) return result.failure;

    return result.success['userProfile']['selectedTopics'];
  }

  Future createUserProfile(
      {required String userId,
      required String name,
      required List<String> topicIds}) async {
    _log.v("creating profile for User(id: $userId, topics: $topicIds)");
    Result<Failure, dynamic> result = await _client.mutation(
        GQLQueries.mutationCreateUserProfile,
        variables:
            GQLQueries.createUserProfileVariables(userId, name, topicIds));

    if (result.isFailed) return result.failure;

    return true;
  }

  @override
  Future fetchVideos(int skip, int limit, List<String> selectedTopics) async {
    _log.i("getting videos for topics: $selectedTopics");

    Result<Failure, dynamic> result = await _client.processQuery(
        query: GQLQueries.queryVideosByTopics,
        variables: GQLQueries.createVideosByTopicsVariables(
            skip, limit, selectedTopics));

    if (result.isFailed) return result.failure;

    return result.success["videoByTopics"];
  }
}
