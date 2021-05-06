abstract class APIService {
  Future checkUpdateRequired();
  Future performLogin({
    required String name,
    required String email,
    required String googleId,
    required String avatar,
    required String accessToken,
  });
  Future getTopics();
}
