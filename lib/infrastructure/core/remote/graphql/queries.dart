class GqlQueries {
  /*
    GraphQl Queries Here
   */
  //Complete
  static final String queryAndroidVersionCode = r'''
    query {
      androidVersionCode {
        data
      }
    }
  ''';

  // Complete
  static final String queryUserRecommendation = r'''
    query userRecommendation($userId: ID!){
      userRecommendation(userId: $userId) {
        id
        title
        video_url
        topic
        start_timestamp
        end_timestamp
        createdAt
        modifiedAt
      }
    }
  ''';

  // Complete
  static final String queryUserRecommendationByTopic = r'''
    query userRecommendationByTopic($userId: ID!, $topicId: ID!, $limit: Int){
      userRecommendationByTopic(userId: $userId, topicId: $topicId, limit: $limit) {
        id
        title
        video_url
        topic
        start_timestamp
        end_timestamp
        createdAt
        modifiedAt
      }
    }
  ''';

  //Complete
  static final String queryAllTopic = r'''
    query {
      allTopic {
        id
        name
      }
    }
  ''';

  // Complete
  static final String queryUser = r'''
    query {
      user {
        id
        name
        email
        avatar
      }
    }
  ''';

  static final String queryUserProfile = r'''
    query userProfile($userId: ID!) {
      userProfile(userId: $userId) {
        id
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
        WatchHistory
      }
    }
  ''';

  // Complete
  static final String queryVideoByTopics = r'''
    query VideoByTopics($topics: [ID!], $skip: Int!, $limit: Int!){
      videoByTopics(topics: $topics, skip: $skip, limit: $limit) {
          id
          title
          description
          author_name
          video_url
          start_timestamp
          end_timestamp
      }
    }
  ''';

  // Complete
  static final String queryAllVideos = r'''
    query allVideo($limit: Int!){
      allVideo(limit: $limit) {
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

  // Complete
  static final String queryVideoById = r'''
    query VideoById($id: ID!){
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

  // Complete
  static final String queryGenerateNewToken = r'''
    query {
      generateNewToken {
        token
      }
    }
    
  ''';

  /*
    GraphQl mutations Here
   */

  // Complete
  static final String mutationIosVersionCode = r'''
    mutation iosVersionCode {
      iosVersionCode {
        data
      }
    }
  ''';

  // Complete
  static final String mutationMqProducerUser = r'''
    mutation MqProducerUser($userId: ID!, $duration: Int!, $timestamp: String!, $userEvent: UserEvent!) {
      MqProducerUser(user: {
        userId: $userId,
        duration: $duration,
        timestamp: $timestamp,
        event: $userEvent
      }) {
        data 
        message
      }
    }
  ''';

  // Complete
  static final String mutationMqProducerUserVideo = r'''
    mutation MqProducerUserVideo($userId: ID!, $videoId: String!, $duration: Int!, $timestamp: String!, $userVideoEvent: UserVideoEvent!) {
      MqProducerUserVideo(userVideo: {
        userId: $userId,
        videoID: $videoId,
        duration: $duration,
        timestamp: $timestamp,
        event: $userVideoEvent
      }) {
        data
        message
      }
    }
  ''';

  // Complete
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
          }
          token
      }
    }
  ''';

  // Complete
  static final String mutationAppleLogin = r'''
    mutation AppleLogin($name: String!, $email: String!, $useBundleId: Boolean!, $authCode: String!) {
      appleLogin(user: {
        name: $name,
        email: $email,
        useBundleId: $useBundleId,
        authorizationCode: $authCode
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

  // Complete
  static final String mutationGenerateInvite = r'''
    mutation generateInvite($email: String!) {
      generateInvite(email: $email)
    }
  ''';

  // Complete
  static final String mutationSessionLogin = r'''
    mutation sessionLogin($name: String!, $code: String!) {
      sessionLogin(user: {
        name: $name,
        code: $code
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

  // Complete
  static final String mutationAddToWaitlist = r'''
    mutation addToWaitlist($email: String) {
      addToWaitlist(email: $email) {
        message
      }
    }
  ''';

  // Complete
  static final String mutationCreateUserProfile = r'''
    mutation createUserProfile($name: String!, $userId: ID!, $selectedTopics: [ID]!) {
      createUserProfile(user: {
        name: $name,
        userId: $userId,
        selectedTopics: $selectedTopics
      }) {
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

  // Complete
  static final String mutationUpdateUserProfile = r'''
    mutation updateUserProfile($name: String!, $userId: ID!, $selectedTopics: [ID]!) {
      updateUserProfile(userId: $userId, user: {
        name: $name,
        userId: $userId,
        selectedTopics: $selectedTopics
      }) {
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

  // Complete
  static final String mutationUpdateProfileCounters = r'''
    mutation updateProfileCounters($userId: ID!, $category: String!, $duration: Int!, $data: String!) {
      updateProfileCounters(watchData: {
        userId: $userId,
        watchData: {
          category: $category,
          duration: $duration,
          data: $data
        }
      }) {
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

  /*
    GraphQl query & mutation Variable Functions
   */

  static Map<String, dynamic> createMapForUserRecommendation(String userId) {
    return {"userId": userId};
  }

  static Map<String, dynamic> createMapForUserRecommendationByTopic(
      String userId, String topicId, int limit) {
    return {"userId": userId, "topicId": topicId, "limit": limit};
  }

  static Map<String, dynamic> createMapForUserProfile(String userId) {
    return {"userId": userId};
  }

  static Map<String, dynamic> createMapForVideoByTopics(List<String> topics,
      int skip, int limit) {
    return {"topics": topics, "skip": skip, "limit": limit};
  }

  static Map<String, dynamic> createMapForAllVideos(int limit) {
    return {"limit": limit};
  }

  static Map<String, dynamic> createMapForVideoById(String id) {
    return {"id": id};
  }

  static Map<String, dynamic> createMapForMqProducerUser(String userId,
      int duration, String timestamp, String userEvent) {
    return {
      "userId": userId,
      "duration": duration,
      "timestamp": String,
      "userEvent": userEvent
    };
  }

  static Map<String, dynamic> createMapForMqProducerUserVideo(String userId,
      int duration, String timestamp, String userVideoEvent, String videoId) {
    return {
      "userId": userId,
      "duration": duration,
      "timestamp": timestamp,
      "userVideoEvent": userVideoEvent,
      "videoId": videoId
    };
  }

  static Map<String, dynamic> createMapForGoogleLogin(String name,
      String email,
      String googleId,
      String avatar,
      String accessToken,) {
    return {
      "name": name,
      "email": email,
      "googleId": googleId,
      "avatarLink": avatar,
      "googleToken": accessToken
    };
  }

  static Map<String, dynamic> createMapForAppleLogin(String name, String email,
      String authCode, bool useBundleId) {
    return {
      "name": name,
      "email": email,
      "useBundleId": useBundleId,
      "authCode": authCode
    };
  }

  static Map<String, dynamic> createMapForGenerateInvite(String email) {
    return {"email": email};
  }

  static Map<String, dynamic> createMapForSessionLogin(String name,
      String code) {
    return {"name": name, "code": code};
  }

  static Map<String, dynamic> createMapForAddToWaitlist(String email) {
    return {"email": email};
  }

  static Map<String, dynamic> createMapForCreateUserProfile(String name,
      String userId, List<String> selectedTopics) {
    return {"name": name, "userId": userId, "selectedTopics": selectedTopics};
  }

  static Map<String, dynamic> createMapForUpdateUserProfile(String name,
      String userId, List<String> selectedTopics) {
    return {"name": name, "userId": userId, "selectedTopics": selectedTopics};
  }

  static Map<String, dynamic> createMapForUpdateProfileCounters(String userId,
      String category, int duration, String data) {
    return {
      "userId": userId,
      "category": category,
      "duration": duration,
      "data": data
    };
  }

}