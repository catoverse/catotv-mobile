part of 'share_video_bloc.dart';

@freezed
abstract class ShareVideoState with _$ShareVideoState {
  const factory ShareVideoState({String shareText, bool isLoading}) = _ShareVideoState;

  factory ShareVideoState.initial() => ShareVideoState(shareText: null, isLoading: false);
}
