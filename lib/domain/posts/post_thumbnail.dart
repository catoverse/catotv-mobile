import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'post_thumbnail.freezed.dart';

@freezed
abstract class PostThumbnail with _$PostThumbnail {
  const factory PostThumbnail({
    @required String thumbnailUrl,
    @required String thumbnailBlurHash
  }) = _PostThumbnail;
}