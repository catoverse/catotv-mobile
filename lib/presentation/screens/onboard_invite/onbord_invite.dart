import 'package:auto_route/auto_route.dart';
import 'package:cato_feed/application/auth/auth.dart';
import 'package:cato_feed/application/onboard_invite/onboard_invite.dart';
import 'package:cato_feed/application/onboard_invite/onboard_invite_bloc.dart';
import 'package:cato_feed/application/topic/topic.dart';
import 'package:cato_feed/injection.dart';
import 'package:cato_feed/presentation/routes/Router.gr.dart';
import 'package:cato_feed/presentation/utils/assets/color_assets.dart';
import 'package:cato_feed/presentation/utils/assets/font_assets.dart';
import 'package:cato_feed/presentation/utils/assets/image_assets.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class OnboardInviteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      body: BlocProvider<OnboardInviteBloc>(
        create: (context) => getIt<OnboardInviteBloc>(),
        child: OnboardInvitePage(),
      ),
    );
    return OnboardInvitePage();
  }
}

class OnboardInvitePage extends StatelessWidget {
  TextEditingController _inviteCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            state.maybeMap(
              failure: (e) {
                Flushbar(
                  message: e.toString(),
                  duration: Duration(seconds: 3),
                )..show(context);
              },
              sessionLoggedIn: (user) {
                // Now the user is loggedIn
                context.read<TopicBloc>().add(TopicEvent.get());
              },
              orElse: () {},
            );
          },
        ),
        BlocListener<TopicBloc, TopicState>(
          listener: (_, state) {
            if (state.failure != null) {
              Flushbar(
                message: state.failure.toString(),
                duration: Duration(seconds: 3),
              )..show(context);
            }
            if (state.allTopics.isNotEmpty) {
              // Next Screen
              context.navigator.replace(CatoRoutes.onboardLoginScreen);
            }
          },
        ),
      ],
      child: BlocBuilder<OnboardInviteBloc, OnboardInviteState>(
        builder: (ctx, state) {
          return SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 128,
                ),
                Container(
                  child: Center(
                    child: Image.asset(ImageAssets.Release.cato_logo),
                  ),
                ),
                Flexible(
                  flex: 3,
                  fit: FlexFit.loose,
                  child: Container(),
                ),
                Padding(
                  child: Text(
                    'Have Invite Code?',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: FontAssets.Poppins,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  padding: EdgeInsets.only(left: 16.0),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.0, right: 16.0),
                  child: TextField(
                    controller: _inviteCodeController,
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: FontAssets.Poppins,
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                    cursorColor: Colors.black,
                    maxLines: 1,
                    decoration: InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                      ),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                      ),
                      hintText: 'Enter your invite code',
                    ),
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                    ),
                    child: PlatformButton(
                      color: Color(0xFF51DFD7),
                      onPressed: () => state.isLoading()
                          ? null
                          : () {
                              var inviteCode = _inviteCodeController.text;
                              if (inviteCode.isEmpty) return;
                              context.read<OnboardInviteBloc>().add(
                                  OnboardInviteEvent.verifyInviteCode(
                                      inviteCode));
                              context.read<AuthBloc>().add(
                                  AuthEvent.sessionLogin(
                                      name: '', inviteCode: inviteCode));
                            },
                      child: Container(
                        child: Text(
                          'Submit',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: FontAssets.Poppins,
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      material: (_, __) => MaterialRaisedButtonData(
                          elevation: 0.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          padding: EdgeInsets.symmetric(vertical: 10.0)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16.0,
                ),
                Center(
                  child: Text(
                    'or',
                    style: TextStyle(
                      color: Color(0xFFC4C4C4),
                      fontFamily: FontAssets.Poppins,
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                ),
                SizedBox(
                  height: 16.0,
                ),
                SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                    ),
                    child: PlatformButton(
                      color: Colors.white,
                      onPressed: () => state.isLoading()
                          ? null
                          : () {
                              // TODO: Show bottomsheet
                              // showPlatformModalSheet(context: context, builder: builder)
                            },
                      child: Container(
                        child: Text(
                          'Join Our Waitlist',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: FontAssets.Poppins,
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      material: (_, __) => MaterialRaisedButtonData(
                          elevation: 0.0,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          padding: EdgeInsets.symmetric(vertical: 10.0)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 32.0,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
