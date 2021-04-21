part of 'videos_by_category_bloc.dart';

@freezed
abstract class VideosByCategoryEvent with _$VideosByCategoryEvent {
  const factory VideosByCategoryEvent.load(Topic topic, String userId) = _VideosByCategoryEvent;
}
