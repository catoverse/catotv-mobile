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
  Future fetchVideos(int skip, int limit, List<String> selectedTopics);
  Future requestInvite({required String email});
  Future getProfile({required String userId});
  Future createUserProfile(
      {required String userId,
      required String name,
      required List<String> topicIds});
}
