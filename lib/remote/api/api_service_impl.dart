import 'dart:io';

import 'package:feed/app/app.locator.dart';
import 'package:feed/app/app.logger.dart';
import 'package:feed/core/constants/keys.dart';
import 'package:feed/core/models/app_models.dart';
import 'package:feed/core/services/environment_service.dart';
import 'package:feed/remote/api/api_service.dart';
import 'package:feed/remote/client.dart';
import 'package:feed/remote/queries.dart';
import 'package:package_info/package_info.dart';

class APIServiceImpl implements APIService {
  final RemoteClient _client = locator<RemoteClient>();
  final PackageInfo _packageInfo = locator<PackageInfo>();
  final EnvironmentService _environmentService = locator<EnvironmentService>();
  final _log = getLogger("API Service");

  @override
  Future isUpdateRequired() async {
    _log.i("checking if there's an app update required");

    Result result = Platform.isAndroid
        ? await _client.processQuery(query: GQLQueries.getAndroidVersion)
        : await _client.mutation(GQLQueries.getIosVersion);

    if (result.isFailed) return result.failure;

    return _handleVersionUpdate(result.success["getLatestVersion"]["version"]);
  }

  bool _handleVersionUpdate(String apiVersion) {
    int apiBundleVersion = int.parse(apiVersion.split(".").last);
    var currentVersion = int.parse(_packageInfo.buildNumber);

    _log.v("currentVersion: ${_packageInfo.buildNumber}");

    return apiBundleVersion > currentVersion;
  }

  @override
  Future signIn({
    required String name,
    required String email,
    required String googleId,
    required String avatar,
    required String accessToken,
  }) async {
    _log.i("performing google login");

    Result<Failure, dynamic> result = await _client.mutation(
        GQLQueries.signInWithGoogle,
        variables: GQLQueries.googleLoginVariables(
            name, email, googleId, avatar, accessToken));

    if (result.isFailed) return result.failure;

    Map<String, dynamic> json = result.success["googleLogin"]["user"];
    json["token"] = result.success["googleLogin"]["token"];

    return User.fromJson(json);
  }

  @override
  Future getTopics() async {
    _log.i("fetching allTopics from GraphQL");

    Result result = await _client.processQuery(query: GQLQueries.getAllTopics);

    if (result.isFailed) return result.failure;

    return result.success["allTopic"];
  }

  @override
  Future getTopVideos() async {
    _log.i("fetching topVideos from GraphQL");

    Result result = await _client.processQuery(query: GQLQueries.getTopVideos);

    if (result.isFailed) return result.failure;

    return result.success["topVideos"];
  }

  @override
  Future requestInvite({required String email}) async {
    _log.i("adding $email to the waitlist");

    Result<Failure, dynamic> result = await _client.mutation(
        GQLQueries.requestInvite,
        variables: GQLQueries.requestInviteVariables(email));

    if (result.isFailed) return result.failure;

    return true;
  }

  @override
  Future getUserProfile({required String userId}) async {
    _log.i("fetching profile for User(id: $userId)");

    Result<Failure, dynamic> result = await _client.processQuery(
        query: GQLQueries.getUserProfile,
        variables: GQLQueries.getUserProfileVariables(userId));

    if (result.isFailed) return result.failure;

    return result.success['userProfile']['selectedTopics'];
  }

  @override
  Future geFullUserProfile({required String userId}) async {
    _log.i("fetching profile for User(id: $userId)");

    Result<Failure, dynamic> result = await _client.processQuery(
        query: GQLQueries.getUserProfile,
        variables: GQLQueries.getUserProfileVariables(userId));

    if (result.isFailed) {
      return result.failure;
    }


    return result.success['userProfile'];
  }

  @override
  Future createUserProfile(
      {required String userId,
      required String name,
      required List<String> topicIds}) async {
    _log.i("creating profile for User(id: $userId, topics: $topicIds)");
    Result<Failure, dynamic> result = await _client.mutation(
        GQLQueries.createUserProfile,
        variables:
            GQLQueries.createUserProfileVariables(userId, name, topicIds));

    if (result.isFailed) return result.failure;

    return true;
  }

  @override
  Future updateUserProfile({required String userId, required String name, required List<String> topicIds}) async {
    _log.i("Updating profile for User(id: $userId, topics: $topicIds)");
    Result<Failure, dynamic> result = await _client.mutation(GQLQueries.updateUserProfile, variables: GQLQueries.updateUserProfileVariables(userId, name, topicIds));

    if (result.isFailed) return result.failure;

    return true;
  }

  @override
  Future getVideos(int skip, int limit, List<String> selectedTopics) async {
    _log.i("getting videos for topics: $selectedTopics");

    Result<Failure, dynamic> result = await _client.processQuery(
        query: GQLQueries.getVideosByTopics,
        variables:
            GQLQueries.videosByTopicsVariables(skip, limit, selectedTopics));

    if (result.isFailed) return result.failure;

    return result.success["truncatedVideoByTopics"];
  }

  @override
  Future getVideoStream(String watchId) async {
    _log.i("getting streaming link for video: $watchId");

    Result<Failure, dynamic> result = await _client.processQuery(
        query: GQLQueries.getStreamLink,
        variables: GQLQueries.getStreamLinkVariables(watchId));

    if (result.isFailed) return result.failure;

    return result.success["getStreamLink"];
  }

  @override
  Future postVideoStream(String watchId, String streamUrl) async {
    _log.i("adding stream link for video $watchId");

    Result<Failure, dynamic> result = await _client.mutation(
        GQLQueries.postStreamLink,
        variables: GQLQueries.postStreamLinkVariables(watchId, streamUrl));

    if (result.isFailed) return result.failure;

    return result.success["postStreamLink"];
  }

  @override
  Future getVideoById(String videoId) async {
    _log.i("getting video with videoId: $videoId");

    Result<Failure, dynamic> result = await _client.processQuery(
        query: GQLQueries.getVideoById,
        variables: GQLQueries.getVideoByIdVariables(videoId));

    if (result.isFailed) return result.failure;

    return result.success["truncatedVideoById"];
  }

  @override
  Future getVideosByIds(List<String> videoIds) async {
    _log.i("getting video with videoId: $videoIds");

    Result<Failure, dynamic> result =
        await _client.processQuery(query: GQLQueries.getVideosByIds, variables: GQLQueries.getVideosByIdsVariables(videoIds));

    if (result.isFailed) return result.failure;

    return result.success["truncatedVideosByIds"];
  }

  @override
  Future logUserEventToMessageQueue(List<MqEventLog> events) async {
    _log.i("logging events : ${events.map((e) => e.toJson()).toList()}");

    Result<Failure, dynamic> result = await _client.mutation(
        GQLQueries.logUserEvent,
        variables: GQLQueries.logUserInputVariables(
            events.map((e) => e.toJson()).toList()));

    if (result.isFailed) return result.failure;

    return result.success["MqProducerUser"];
  }

  @override
  Future addBookmarks(String userId, String bookmarkId) async {
    _log.i('posting bookmarks $bookmarkId with userId: $userId');

    Result<Failure, dynamic> result = await _client.mutation(
      GQLQueries.addBookmarks,
      variables: GQLQueries.addBookmarksVariables(userId, [bookmarkId]),
    );

    if (result.isFailed) return result.failure;

    return result.success['userProfile'];
  }

  @override
  Future<bool> letUserInOrNot(String email) async {
    _log.i('Checking if user is on waitlist email: $email');

    Result<Failure, dynamic> result = await _client.postDio(
      'https://getwaitlist.com/api/v1/users/status',
      {
        "email": email,
        "api_key": _environmentService.getValue(kGetWaitListApiKey),
      },
    );
    if (result.isFailed) return false;

    final _waitlist = GetWaitlist.fromJson(result.success);

    if (_waitlist.currentPriority == null) return true;

    return false;
  }

  @override
  Future<GetWaitlist?> addUserToWailist(String email) async {
    _log.i('Adding User on waitlist email: $email');

    Result<Failure, dynamic> result = await _client.postDio(
      'https://getwaitlist.com/api/v1/waitlists/submit',
      {
        "email": email,
        "api_key": _environmentService.getValue(kGetWaitListApiKey),
        "referral_link": "https://www.cato.tv/",
      },
    );
    if (result.isFailed) return null;

    return GetWaitlist.fromJson(result.success);
  }
}
