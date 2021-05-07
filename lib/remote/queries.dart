/// GraphQL [Queries] and [Mutations]
///
class GQLQueries {
  static final String queryAndroidVersionCode = r'''
    query {
      androidVersionCode {
        data
      }
    }
  ''';

  static final String queryAllTopic = r'''
    query {
      allTopic {
        id
        name
      }
    }
  ''';

  static final String mutationIosVersionCode = r'''
    mutation iosVersionCode {
      iosVersionCode {
        data
      }
    }
  ''';

  static final String mutationGoogleLogin = r'''
    mutation GoogleLogin($name: String!, $email: String!, $googleId: String!, $avatarLink: String!, $googleToken: String!){
      googleLogin(user: {
          name: $name,
          email: $email,
          google_id: $googleId,
          avatar: $avatarLink,
          google_token: $googleToken
      }) {
          user {
              id
              name
              email
              avatar
              invites
          }
          token
      }
    }
  ''';

  static Map<String, dynamic> createMapForGoogleLogin(
    String name,
    String email,
    String googleId,
    String avatar,
    String accessToken,
  ) {
    return {
      "name": name,
      "email": email,
      "googleId": googleId,
      "avatarLink": avatar,
      "googleToken": accessToken
    };
  }
}
