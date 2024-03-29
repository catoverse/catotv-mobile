import 'package:feed/core/models/app_models.dart';

abstract class APIService {
  Future isUpdateRequired();
  Future signIn({
    required String name,
    required String email,
    required String googleId,
    required String avatar,
    required String accessToken,
  });
  Future getTopics();
  Future getTopVideos();
  Future getVideos(int limit, String userId);
  Future getVideoById(String videoId);
  Future getVideosByIds(List<String> videoIds);
  Future requestInvite({required String email});
  Future getUserProfile({required String userId});
  Future geFullUserProfile({required String userId});
  Future createUserProfile(
      {required String userId,
      required String name,
      required List<String> topicIds});
  Future updateUserProfile(
      {required String userId,
      required String name,
      required List<String> topicIds});
  Future getVideoStream(String watchId);
  Future postVideoStream(String watchId, String streamUrl);
  Future logUserEventToMessageQueue(List<MqEventLog> events);
  Future addBookmarks(String userId, String bookmarkId);
  Future<bool> letUserInOrNot(String email);
  Future<GetWaitlist?> addUserToWailist(String email);
}
