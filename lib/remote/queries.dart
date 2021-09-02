class GQLQueries {
  // Queries - we use queries to fetch data
  static const String getAndroidVersion = r'''
    query GetAndroidVersion {
      getLatestVersion {
        version
        required
      }
    }
  ''';

  static const String getAllTopics = r'''
    query GetAllTopics{
      allTopic {
        id
        name
      }
    }
  ''';

  static const String getVideosByTopics = r'''  
    query VideoByTopics($selectedTopics: [ID!], $skip: Int!, $limit: Int!) {
      videoByTopics(topics: $selectedTopics, skip: $skip, limit: $limit) {
        id
        title
        video_url
        topic {
          id
          name
        }
        start_timestamp
        end_timestamp
        content_details {
          youtube_category
          captions_available
          dislikes
          duration
          views
        }
        channel_information {
          id
          name
          subscriber_count
        }
      }
    }
  ''';

  static const String getVideoById = r'''
    query GetVideoById($watchId: String!) {
      videoByWatchId(watchId: $watchId) {
        id
        title
        video_url
        topic {
          id
          name
        }
        start_timestamp
        end_timestamp
        content_details {
          youtube_category
          captions_available
          dislikes
          duration
          views
        }
        channel_information {
          id
          name
          subscriber_count
        }
      }
    }
  ''';

  static const String getStreamLink = r'''
    query GetVideoStreamLink($watchId: String!) {
      getStreamLink(watchId: $watchId)
    }
  ''';

  static const String getUserProfile = r'''
    query GetUserProfile($userId: ID!) {
      userProfile(userId: $userId) {
        name
        selectedTopics
        totalWatchTime
        videoWatched {
          topic
          count
        }
        videoCount
        lastFiveCount {
          date
          count
        }
        userId
        id
        WatchHistory
      }
    }
  ''';

  static const String createUserProfile = r'''
    mutation CreateProfile($userId: ID!, $name: String!, $selectedTopics: [ID]!) {
      createUserProfile(
        user: { name: $name, userId: $userId, selectedTopics: $selectedTopics }
      ) {
        name
      }
    }
  ''';

  // Mutations - we use mutations to modify server-side data.

  static const String getIosVersion = r'''
    mutation IosVersionCode {
      iosVersionCode {
        data
      }
    }
  ''';

  static const String signInWithGoogle = r'''
    mutation SignInWithGoogle($name: String!, $email: String!, $googleId: String!, $avatarLink: String!, $googleToken: String!){
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

  static const String requestInvite = r'''
    mutation RequestInvite($email: String!){
      addToWaitlist(email: $email){
        data
        message
      }
    }
  ''';

  static const String postStreamLink = r'''
    mutation PostStreamLink($watchId: String!, $streamUrl: String!){
      postStreamLink(watchId: $watchId, streamUrl: $streamUrl){
        data
      }
    }
  ''';

  static const String logUserEvent = r'''
    mutation MQLogUserEvent($events: [MQProducerUserInput!]!) {
      MqProducerUser(events: $events) {
        data
        message
      }
    }
  ''';

  /// Variables

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

  static Map<String, dynamic> requestInviteVariables(String email) {
    return {"email": email};
  }

  static Map<String, dynamic> getUserProfileVariables(String userId) {
    return {"userId": userId};
  }

  static Map<String, dynamic> createUserProfileVariables(
      String userId, String name, List<String> topicIds) {
    return {"userId": userId, "name": name, "selectedTopics": topicIds};
  }

  static Map<String, dynamic> videosByTopicsVariables(
      int skip, int limit, List<String> topicIds) {
    return {"skip": skip, "limit": limit, "selectedTopics": topicIds};
  }

  static Map<String, dynamic> getStreamLinkVariables(String watchId) {
    return {"watchId": watchId};
  }

  static Map<String, dynamic> getVideoByIdVariables(String watchId) {
    return {"watchId": watchId};
  }

  static Map<String, dynamic> postStreamLinkVariables(
      String watchId, String streamUrl) {
    return {"watchId": watchId, "streamUrl": streamUrl};
  }

  static Map<String, dynamic> logUserInputVariables(
      List<Map<String, dynamic>> events) {
    return {"events": events};
  }
}
