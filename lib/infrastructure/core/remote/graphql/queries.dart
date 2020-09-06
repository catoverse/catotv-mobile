class GqlQueries {
  static final String versionCheckQuery = r'''
    query {
      androidVersionCode {
        data
      }
    }
  ''';

  static final String googleLoginMutation = r'''
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
          }
          token
      }
    }
  ''';
  static Map<String, dynamic> googleLoginVariables(
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

  static final String allTopicQuery = r'''
    query {
      allTopic {
        id
        name
      }
    }
  ''';

  static final String userProfileQuery = r'''
    query {
        userProfile {
          topics {
            id
            name
          }
        }
    }
  ''';

  static final String createUserProfileMutation = r'''
    mutation CreateUserProfile($topicIds: [ID!]!) {
      createUserProfile(profile: {
        topics: $topicIds
      }) {
        topics {
          id
          name
        }
      }
    }
  ''';

  static Map<String, dynamic> createUserProfileVariables(
      List<String> topicIds) {
    return {"topicIds": topicIds};
  }

  static final String updateUserProfileMutation = r'''
    mutation UpdateUserProfile($topicIds: [ID!]!) {
      updateUserProfile(profile: {
        topics: $topicIds
      }) {
        topics {
          id
          name
        }
      }
    }
  ''';

  static Map<String, dynamic> updateUserProfileVariables(
      List<String> topicIds) {
    return {"topicIds": topicIds};
  }

  static final String videosQuery = r'''
    query VideoByTopics($skip: Int!, $limit: Int!){
      videoByTopics(skip: $skip, limit: $limit) {
          id
          title
          description
          author_name
          video_url
          topic {
              id
              name
          }
          start_timestamp
          end_timestamp
      }
    }
  ''';

  static Map<String, dynamic> videosVariables(int skip, int limit) {
    return {
      "skip": skip,
      "limit": limit
    };
  }


  static final String videosByTopicsQuery = r'''
    query VideoByTopics($topicIds: [ID!], $skip: Int!, $limit: Int!){
      videoByTopics(topics: $topicIds, skip: $skip, limit: $limit) {
          id
          title
          description
          author_name
          video_url
          topic {
              id
              name
          }
          start_timestamp
          end_timestamp
      }
    }
  ''';

  static Map<String, dynamic> videosByTopicsVariables(int skip, int limit, List<String> topicIds) {
    var map = {
      "topicIds": topicIds,
      "skip": skip,
      "limit": limit
    };
    if(topicIds == null || topicIds.isEmpty) {
      map.remove("topicIds");
    }
    return map;
  }

  static final String videoByIdQuery = r'''
    query VideoByTopics($id: ID!){
      videoById(id: $id) {
          id
          title
          description
          author_name
          video_url
          topic {
              id
              name
          }
          start_timestamp
          end_timestamp
      }
    }
  ''';

  static Map<String, dynamic> videoByIdVariables(String id) {
    return {
      "id": id
    };
  }
}
