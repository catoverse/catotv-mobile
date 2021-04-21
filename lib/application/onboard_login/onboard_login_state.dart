part of 'onboard_login_bloc.dart';

@freezed
abstract class OnboardLoginState with _$OnboardLoginState{
  const factory OnboardLoginState.initial() = _OnboardLoginInitial;
  const factory OnboardLoginState.loginWithGoogleLoading() = _GoogleLoginLoading;
}

extension OnboardLoginStateX on OnboardLoginState {
  bool isGoogleLoginLoading() {
    return this.map(initial: (s) => false, loginWithGoogleLoading: (s) => true);
  }
}
