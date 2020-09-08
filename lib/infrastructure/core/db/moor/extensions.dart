import 'package:cato_feed/domain/posts/post.dart';
import 'package:kt_dart/collection.dart';

import 'moor_database.dart';
import 'package:cato_feed/domain/auth/user.dart';
import 'package:cato_feed/domain/topic/topic.dart';

// Extensions for DTO
extension MUserDTO on MUser {
  User toUser() {
    if (this == null) {
      return null;
    }

    return User(
        id: id,
        name: name,
        email: email,
        photoUrl: avatar,
        googleId: googleId,
        interestSelected: isTopicSelected,
        jwtToken: jwtToken,
        createdAt: createdAt,
        updatedAt: updatedAt,
        jwtIssueDate: jwtIssueDate);
  }
}

extension UserDTO on User {
  MUser toMUser() {
    if (this == null) return null;

    return MUser(
        id: this.id,
        name: this.name,
        email: this.email,
        avatar: this.photoUrl,
        googleId: this.googleId,
        jwtToken: this.jwtToken,
        isTopicSelected: this.interestSelected,
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

  static User fromResponse(dynamic response, String googleId) {
    try {
      var loginResult = response['googleLogin'];
      var userResult = response['googleLogin']['user'];
      return User(
          id: userResult['id'] as String,
          email: userResult['email'] as String,
          name: userResult['name'] as String,
          photoUrl: userResult['avatar'] as String,
          googleId: googleId,
          jwtToken: loginResult['token'],
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
          jwtIssueDate: DateTime.now(),
          interestSelected: false
      );
    } catch (_) {
      return null;
    }
  }
}

extension MTopicDTO on MTopic {
  Topic toTopic() {
    if (this == null) {
      return null;
    }

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
    if (this == null) return null;

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
    return MPost(id: this.id,
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
      var videoResults = response['videoByTopics'] as List<dynamic>;
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
      if (response['id'] == null) return null;
      var videoUrl = response['video_url'] as String;
      if (videoUrl == null || videoUrl.isEmpty || !videoUrl.startsWith('http'))
        return null;
      var videoId = convertUrlToId(videoUrl);
      if(videoId == null || videoId.isEmpty) return null;

      return Post(
          id: response['id'],
          videoUrl: response['video_url'],
          title: response['title'] ?? '',
          description: response['description'] ?? '',
          authorName: response['author_name'] ?? '',
          authorAvatar: '',
          startTimestamp: response['start_timestamp'] as int,
          endTimestamp: response['end_timestamp'] as int,
          topicId: response['topic']['id'] ?? ''
      );
    } catch (_) {
      return null;
    }
  }
}

String convertUrlToId(String url, {bool trimWhitespaces = true}) {
  assert(url?.isNotEmpty ?? false, 'Url cannot be empty');
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
    if (this == null) return null;

    return Post(id: this.id,
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