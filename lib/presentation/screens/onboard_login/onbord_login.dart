import 'package:auto_route/auto_route.dart';
import 'package:cato_feed/application/auth/auth.dart';
import 'package:cato_feed/application/onboard_invite/onboard_invite.dart';
import 'package:cato_feed/application/onboard_login/onboard_login_bloc.dart';
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

class OnboardLoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
        body: BlocProvider<OnboardLoginBloc>(
      create: (_) => getIt<OnboardLoginBloc>(),
      child: OnboardLoginPage(),
    ));
  }
}

class OnboardLoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AuthBloc, AuthState>(
          listener: (_, state) {
            state.maybeMap(
              authenticated: (e) {
                Flushbar(
                  message: 'Login success',
                  duration: Duration(seconds: 2),
                )..show(context);
                // Show next screen
                context.read<OnboardLoginBloc>().add(OnboardLoginEvent.loginWithGoogleSuccess());
                context.read<TopicBloc>().add(TopicEvent.get());
                context.navigator.replace(CatoRoutes.onboardScreen);
              },
              failure: (e) {
                Flushbar(
                  message: e.message,
                  duration: Duration(seconds: 2),
                )..show(context);
              },
              orElse: () {},
            );
          },
        ),
      ],
      child: BlocBuilder<OnboardLoginBloc, OnboardLoginState>(
        builder: (_, state) {
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
                  flex: 1,
                  fit: FlexFit.loose,
                  child: Container(),
                ),
                Center(
                  child: Text(
                    'Welcome to Cato',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: FontAssets.Poppins,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Flexible(
                  child: Container(),
                  flex: 1,
                ),
                SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                    ),
                    child: PlatformButton(
                      color: Colors.white,
                      onPressed: () {
                              context
                                  .read<AuthBloc>()
                                  .add(AuthEvent.googleLogin());
                              context
                                  .read<OnboardLoginBloc>()
                                  .add(OnboardLoginEvent.loginWithGoogle());
                            },
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Sign in with Google ',
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: FontAssets.Poppins,
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                              ),
                            ),
                            Container(
                                width: 24,
                                height: 24,
                                child: Image.asset(
                                    ImageAssets.Release.google_logo)),
                          ],
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
                Flexible(
                  child: Container(),
                  flex: 1,
                ),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      context.navigator.replace(CatoRoutes.onboardScreen);
                    },
                    child: Text(
                      'Skip for now',
                      style: TextStyle(
                        color: Color(0xFF8F8F8F),
                        fontSize: 16,
                        fontFamily: FontAssets.Poppins,
                        fontWeight: FontWeight.w500,
                      ),
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
