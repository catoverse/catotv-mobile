part of 'onboard_invite_bloc.dart';

@freezed
abstract class OnboardInviteState with _$OnboardInviteState {
  const factory OnboardInviteState.initial() = _Initial;

  const factory OnboardInviteState.inviteCodeValidationLoading() =
      _ValidationLoading;

  const factory OnboardInviteState.joinWaitListLoading() = _WaitlistLoading;

  const factory OnboardInviteState.joinWaitListSuccess(String message) =
      _WaitListSuccess;

  const factory OnboardInviteState.failure(Failure failure) = _Failure;

}

extension OnboardInviteStateX on OnboardInviteState {
  bool isLoading() {
    return this.maybeMap(
        inviteCodeValidationLoading: (e) => true,
        joinWaitListLoading: (e) => true,
        orElse: () => false);
  }
}
