import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_thumbnail.freezed.dart';

@freezed
abstract class PostThumbnail with _$PostThumbnail {
  const factory PostThumbnail({
    String thumbnailUrl,
    String thumbnailBlurHash
  }) = _PostThumbnail;
}