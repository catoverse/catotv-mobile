import 'package:feed/core/enums/user_events.dart';

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
  Future getVideos(int skip, int limit, List<String> selectedTopics);
  Future getVideoById(String videoId);
  Future requestInvite({required String email});
  Future getUserProfile({required String userId});
  Future createUserProfile(
      {required String userId,
      required String name,
      required List<String> topicIds});
  Future getVideoStream(String watchId);
  Future postVideoStream(String watchId, String streamUrl);
  Future logUserEventToMessageQueue(
    String userId,
    String videoId,
    String timestamp,
    String description,
    int videoDuration,
    int sessionDuration,
    int durationWatched,
    UserEvent event,
  );
}
