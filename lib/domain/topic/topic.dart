import 'package:freezed_annotation/freezed_annotation.dart';

part 'topic.freezed.dart';

@freezed
abstract class Topic with _$Topic {
  const factory Topic(
      {@required String id,
      @required String name,
      @required String color,
      @required String image}) = _Topic;
}
