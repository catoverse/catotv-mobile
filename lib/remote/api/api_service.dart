abstract class APIService {
  Future checkUpdateRequired();
  Future performLogin({
    required String name,
    required String email,
    required String googleId,
    required String avatar,
    required String accessToken,
  });
  Future fetchTopics();
  Future fetchVideosForUser({required String userID});
  Future requestInvite({required String email});
  Future checkProfileExists({required String userID});
  Future createUserProfile(
      {required String userId,
      required String name,
      required List<String> topicIds});
}
