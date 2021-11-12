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
    query GetFeedVideos($userId: ID!, $limit: Int!) {
      getFeed(userId: $userId, limit: $limit) {
        id
        source
        video_id
        title
        available
        video_url
        topics {
          id
          name
        }
        start_timestamp
        end_timestamp
        thumbnail_url
        channel_name
        channel_avatar_url
      }
    } 
  ''';

  static const String getVideoById = r'''
    query GetTruncatedVideoByWatchId($watchId: String!) {
      truncatedVideoByWatchId(watchId: $watchId) {
        id
        source
        video_id
        title
        available
        video_url
        topics {
          id
          name
        }
        start_timestamp
        end_timestamp
        thumbnail_url
        channel_name
        channel_avatar_url
      }
    }
  ''';

  static const String getVideosByIds = r'''
    query GetTruncatedVideosByIds($ids: [ID!]!) {
      truncatedVideosByIds(ids: $ids) {
        id
        source
        video_id
        title
        available
        video_url
        topics {
          id
          name
        }
        start_timestamp
        end_timestamp
        thumbnail_url
        channel_name
        channel_avatar_url
      }
    }
  ''';

  static const String getTopVideos = r'''
    query GetTopVideos {
      topVideos {
        id
        source
        video_id
        title
        available
        video_url
        topics {
          id
          name
        }
        start_timestamp
        end_timestamp
        thumbnail_url
        channel_name
        channel_avatar_url
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
        userId
        selectedTopics
        bookmarks
        totalWatchTime
        videosWatchedPerTopic {
          topic
          count
        }
        watchedVideos {
          videoId
          topicId
          channelId
        }
      }
    }
  ''';

  static const String createUserProfile = r'''
    mutation CreateProfile($userId: ID!, $name: String!, $selectedTopics: [ID]!) {
      createUserProfile(
        userProfile: { name: $name, userId: $userId, selectedTopics: $selectedTopics }
      ) {
        name
      }
    }
  ''';

  static const String updateUserProfile = r'''
    mutation UpdateProfile($userId: ID!, $name: String!, $selectedTopics: [ID]! ) {
      updateUserProfile(
         userId: $userId, userProfile: {name: $name, userId: $userId, selectedTopics: $selectedTopics}
      ) {
        name
    		selectedTopics
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

  static const String addBookmarks = r'''
  mutation addBookmarks(
    $userId: ID!
    $bookmarks: [String]!
  ) {

    addBookmarks(userId: $userId, bookmarks: $bookmarks) {
      name
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

  static Map<String, dynamic> updateUserProfileVariables(
      String userId, String name, List<String> topicIds) {
    return {"userId": userId, "name": name, "selectedTopics": topicIds};
  }

  static Map<String, dynamic> getFeedVariables(int limit, String userId) {
    return {"limit": limit, "userId": userId};
  }

  static Map<String, dynamic> getStreamLinkVariables(String watchId) {
    return {"watchId": watchId};
  }

  static Map<String, dynamic> getVideoByIdVariables(String id) {
    return {"watchId": id};
  }

  static Map<String, dynamic> getVideosByIdsVariables(List<String> ids) {
    return {"ids": ids};
  }

  static Map<String, dynamic> postStreamLinkVariables(
      String watchId, String streamUrl) {
    return {"watchId": watchId, "streamUrl": streamUrl};
  }

  static Map<String, dynamic> logUserInputVariables(
      List<Map<String, dynamic>> events) {
    return {"events": events};
  }

  static Map<String, dynamic> addBookmarksVariables(
      String userId, List<String> bookmarks) {
    return {
      'userId': userId,
      'bookmarks': bookmarks,
    };
  }
}
