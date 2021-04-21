part of 'onboard_invite_bloc.dart';

@freezed
abstract class OnboardInviteEvent with _$OnboardInviteEvent{
  const factory OnboardInviteEvent.verifyInviteCode(String inviteCode) = _VerifyInviteCode;
  const factory OnboardInviteEvent.joinWaitList(String email) = _JoinWaitList;
}
