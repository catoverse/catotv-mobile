import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';

part 'post.freezed.dart';

@freezed
abstract class Post with _$Post {
  const factory Post({
    @required String id,
    @required String authorName,
    @required String authorAvatar,
    @required String title,
    @required String description,
    @required String videoUrl,
    @required int startTimestamp,
    @required int endTimestamp,
    @required String topicId,
  }) = _Post;
}