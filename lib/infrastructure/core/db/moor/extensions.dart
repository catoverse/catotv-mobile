import 'package:cato_feed/domain/auth/user_profile.dart';
import 'package:cato_feed/domain/posts/post.dart';
import 'package:kt_dart/collection.dart';

import 'moor_database.dart';
import 'package:cato_feed/domain/auth/user.dart';
import 'package:cato_feed/domain/topic/topic.dart';

// Extensions for DTO
extension MUserDTO on MUser {
  User toUser() {

    return User(
        id: id,
        name: name,
        email: email,
        photoUrl: avatar,
        isProfileCreated: false, // TODO: Change this
        jwtToken: jwtToken,
        createdAt: createdAt,
        updatedAt: updatedAt,
        jwtIssueDate: jwtIssueDate);
  }
}

extension UserDTO on User {
  MUser toMUser() {

    return MUser(
        id: this.id,
        name: this.name,
        email: this.email,
        avatar: this.photoUrl,
        googleId: "", // TODO: Fix this
        jwtToken: this.jwtToken,
        isTopicSelected: this.isProfileCreated,
        createdAt: this.createdAt,
        updatedAt: this.updatedAt,
        jwtIssueDate: this.jwtIssueDate);
  }

  bool isJWTExpired() {
    if (this.jwtIssueDate == null) {
      return true;
    }

    return DateTime.now()
        .subtract(Duration(days: 2))
        .isAfter(this.jwtIssueDate);
  }

  static User fromResponse(dynamic response, String key) {
    try {
      var loginResult = response[key];
      var userResult = loginResult['user'];
      return User(
        id: userResult['id'] as String,
        email: userResult['email'] as String,
        name: userResult['name'] as String,
        photoUrl: userResult['avatar'] as String,
        jwtToken: loginResult['token'],
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
        jwtIssueDate: DateTime.now(),
        isProfileCreated: false,
      );
    } catch (_) {
      return null;
    }
  }
}

extension UserProfileDTO on UserProfile {
  static UserProfile fromResponse(dynamic response) {
    try {
      var videoWatched = Map<String, int>();
      var videoWatchedRes =
          response['videoWatched'] as List<dynamic>;
      videoWatchedRes.forEach((element) {
        element as Map<String, dynamic>;
        videoWatched[element['topic']] = element['count'] ?? 0;
      });

      var lastFiveCount = Map<String, int>();
      var lastFiveCountRes =
          response['lastFiveCount'] as List<dynamic>;
      lastFiveCountRes.forEach((element) {
        element as Map<String, dynamic>;
        videoWatched[element['date']] = element['count'] ?? 0;
      });

      List<String> selectedTopics = [];
      (response['selectedTopics'] as List<dynamic> ?? []).forEach((element) {
        selectedTopics.add(element as String);
      });

      return UserProfile(
        name: response['name'],
        totalWatchTime: response['totalWatchTime'] as int,
        videoCount: response['videoCount'] as int,
        userId: response['userId'] as String,
        id: response['id'] as String,
        watchHistory: response['WatchHistory'] ?? "",
        selectedTopics: selectedTopics,
        videoWatched: videoWatched,
        lastFiveCount: lastFiveCount,
      );
    } catch (e) {
      print(e);
      return null;
    }
  }
}

extension MTopicDTO on MTopic {
  Topic toTopic() {
    return Topic(
      id: this.id,
      name: this.name,
      color: this.color,
      image: this.imageUrl,
    );
  }
}

extension TopicDTO on Topic {
  MTopic toMTopic() {

    return MTopic(
        id: this.id,
        name: this.name,
        color: this.color,
        imageUrl: this.image,
        createdAt: DateTime.now(),
        updatedAt: DateTime.now());
  }

  static KtList<Topic> fromResponse(dynamic response) {
    try {
      var topicsResult = response as List<dynamic>;
      List<Topic> topicList = [];
      topicsResult.forEach((element) {
        topicList.add(Topic(
            id: element['id'], name: element['name'], color: '', image: ''));
      });
      return KtList.from(topicList);
    } catch (_) {
      return null;
    }
  }
}

extension PostDTO on Post {
  MPost toMPost() {
    return MPost(
        id: this.id,
        title: this.title,
        description: this.description,
        authorName: this.authorName,
        authorAvatar: this.authorAvatar,
        startTimestamp: this.startTimestamp,
        endTimestamp: this.endTimestamp,
        videoUrl: this.videoUrl,
        topicId: this.topicId,
        createdAt: DateTime.now(),
        updatedAt: DateTime.now());
  }

  static KtList<Post> listFromResponse(dynamic response) {
    try {
      var videoResults = response as List<dynamic>;
      List<Post> posts = [];
      videoResults.forEach((element) {
        var p = fromResponse(element);
        if (p != null) posts.add(p);
      });
      return KtList.from(posts);
    } catch (_) {
      return null;
    }
  }

  static Post fromResponse(dynamic response) {
    try {
      var res = response as Map<String, dynamic>;

      if (!res.containsKey("id") && !res.containsKey("_id")) return null;
      var videoUrl = res['video_url'] as String;
      if (videoUrl == null || videoUrl.isEmpty || !videoUrl.startsWith('http'))
        return null;
      // var videoId = convertUrlToId(videoUrl);
      // if(videoId == null || videoId.isEmpty) return null;
      var id = res.containsKey("id") ? res["id"] : res["_id"];
      var topicId = res['topic'] ?? '';
      // if (res['topic'] is Map) {
      //   topicId = res['topic']['id'];
      // } else {
      //   topicId = res['topic'];
      // }
      return Post(
          id: id,
          videoUrl: res['video_url'],
          title: res['title'] ?? '',
          description: res['description'] ?? '',
          authorName: res['author_name'] ?? '',
          authorAvatar: '',
          startTimestamp: res['start_timestamp'] as int,
          endTimestamp: res['end_timestamp'] as int,
          topicId: topicId);
    } catch (_) {
      return null;
    }
  }
}

String convertUrlToId(String url, {bool trimWhitespaces = true}) {
  assert(url.isNotEmpty, 'Url cannot be empty');
  if (!url.contains("http") && (url.length == 11)) return url;
  if (trimWhitespaces) url = url.trim();

  for (var exp in [
    RegExp(
        r"^https:\/\/(?:www\.|m\.)?youtube\.com\/watch\?v=([_\-a-zA-Z0-9]{11}).*$"),
    RegExp(
        r"^https:\/\/(?:www\.|m\.)?youtube(?:-nocookie)?\.com\/embed\/([_\-a-zA-Z0-9]{11}).*$"),
    RegExp(r"^https:\/\/youtu\.be\/([_\-a-zA-Z0-9]{11}).*$")
  ]) {
    Match match = exp.firstMatch(url);
    if (match != null && match.groupCount >= 1) return match.group(1);
  }

  return null;
}

extension MPostDTO on MPost {
  Post toPost() {

    return Post(
        id: this.id,
        authorName: this.authorName,
        authorAvatar: this.authorAvatar,
        title: this.title,
        description: this.description,
        videoUrl: this.videoUrl,
        startTimestamp: this.startTimestamp,
        endTimestamp: this.endTimestamp,
        topicId: this.topicId);
  }
}
