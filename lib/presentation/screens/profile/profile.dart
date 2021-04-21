import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:cato_feed/application/app_redirect/plugin/AppRedirectHelper.dart';
import 'package:cato_feed/application/auth/auth.dart';
import 'package:cato_feed/domain/core/i_logger.dart';
import 'package:cato_feed/infrastructure/core/logger/log_events.dart';
import 'package:cato_feed/injection.dart';
import 'package:cato_feed/presentation/routes/Router.gr.dart';
import 'package:cato_feed/presentation/utils/assets/color_assets.dart';
import 'package:cato_feed/presentation/utils/assets/font_assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:cato_feed/presentation/utils/wave_path_clipper.dart';
import 'package:cato_feed/presentation/utils/assets/image_assets.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProfilePage();
  }
}


// ignore: must_be_immutable
class ProfilePage extends StatelessWidget {
  ProfilePage({Key key}) : super(key: key);

  List<_ProfileItems> _profileItems = [
    _ProfileItems(
        iconAsset: ImageAssets.Release.icon_select_apps, title: 'Pick Topics'),
    // _ProfileItems(iconAsset: ImageAssets.Release.icon_settings, title: 'Notifications Settings'),
    _ProfileItems(iconAsset: ImageAssets.Release.icon_logout, title: 'Logout'),

    if (Platform.isAndroid)
      _ProfileItems(
          iconAsset: ImageAssets.Release.icon_no_distractions,
          title: 'No Distraction'),
    // _ProfileItems(iconAsset: ImageAssets.Release.icon_deactivate, title: 'Deactivate Account'),
  ];

  Widget _getEditIcon() {
    return Container(
      width: 24,
      height: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: ColorAssets.teal,
      ),
      child: Icon(
        Icons.edit,
        color: Colors.white,
        size: 12,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // double baseMarginLeftRight = 32;
    double offset = 3.42;
    double topCardHeight = 235.0;
    double heightOffset = topCardHeight / offset;

    double avatarSize = 100.0;
    double avatarHorizontalOffset =
        (MediaQuery.of(context).size.width * 0.5) - avatarSize * 0.5;
    double avatarVerticalOffset =
        topCardHeight - heightOffset - avatarSize * 0.5;

    return PlatformScaffold(
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (_, state) {
          state.maybeWhen(
              unauthenticated: () =>
              context.navigator.replace(CatoRoutes.onboardLoginBackScreen),
              orElse: () {});
        },
        builder: (context, state) {
          var user = state.maybeWhen(
              orElse: () => null, authenticated: (user) => user);
          return Column(
            children: [
              Stack(
                children: [
                  ClipPath(
                    clipper: WavePathClipper(offset: offset),
                    child: Container(
                      height: topCardHeight,
                      color: ColorAssets.black21,
                    ),
                  ),
                  Card(
                    color: ColorAssets.black21,
                    elevation: 0.0,
                    margin: EdgeInsets.only(left: 16, right: 16, top: 30),
                    child: ListTile(
                      // leading: GestureDetector(
                      //   child: InkWell(
                      //     child: Icon(
                      //       Icons.arrow_back,
                      //       color: Colors.white,
                      //     ),
                      //   ),
                      //   onTap: () {
                      //     context.navigator.pop();
                      //   },
                      // ),
                      // trailing: Icon(
                      //   Icons.check,
                      //   color: Colors.white,
                      // ),
                      title: Center(
                        child: Text(
                          'MY PROFILE',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: FontAssets.Roboto,
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: avatarVerticalOffset,
                    right: avatarHorizontalOffset,
                    child: Container(
                      height: avatarSize,
                      width: avatarSize,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        // image: DecorationImage(
                        //   image: (user?.photoUrl == null ||
                        //           user?.photoUrl?.isEmpty == true)
                        //       ? AssetImage(ImageAssets.Release.google_logo)
                        //       : NetworkImage(
                        //           user?.photoUrl ?? '',
                        //         ),
                        //   fit: BoxFit.fitHeight,
                        // ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                elevation: 0.0,
                margin: EdgeInsets.only(left: 16, right: 16),
                child: ListTile(
                  visualDensity: VisualDensity(vertical: -4),
                  // trailing: _getEditIcon(),
                  title: Text(
                    user?.name ?? '',
                    maxLines: 1,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    style:
                        TextStyle(color: ColorAssets.blueHaiti, fontSize: 24),
                  ),
                ),
              ),
              Card(
                elevation: 0.0,
                margin: EdgeInsets.only(left: 16, right: 16),
                child: ListTile(
                  visualDensity: VisualDensity(vertical: -4),
                  // trailing: _getEditIcon(),
                  title: Text(
                    user?.email ?? '',
                    maxLines: 1,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: ColorAssets.blueHaiti.withOpacity(0.5),
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              Card(
                elevation: 0.0,
                margin: EdgeInsets.only(left: 16, right: 16),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: _profileItems.length,
                  physics: NeverScrollableScrollPhysics(),
                  addRepaintBoundaries: false,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return _profileItems[index]._buildWidget(() {
                      if (index == 0) {
                        getIt<ILogger>()
                            .logEvent(LogEvents.EVENT_PROFILE_PICK_TOPIC);
                        context.navigator.push(CatoRoutes.topicSelectionScreen);
                      } else if (index == 1) {
                        getIt<ILogger>()
                            .logEvent(LogEvents.EVENT_LOGOUT_PRESSED);
                        _logout(context);
                      } else if (index == 2) {
                        _appRedirectClick(context);
                      }
                    });
                  },
                ),
              ),
              Expanded(
                child: ClipPath(
                  clipper: WavePathClipper(clipFromTop: true),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(ImageAssets.Release.abstract_bg),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Future<void> _appRedirectClick(BuildContext context) async {
    var packages = await getIt<AppRedirectHelper>().getBlockedPackages();
    var screen = (packages == null || packages.isEmpty)
        ? CatoRoutes.appRedirectScreen : CatoRoutes.noDistractionSettingsScreen;

    context.navigator.push(screen);
  }

  Future<bool> _logout(BuildContext context) async{
    return false;
    // return showPlatformDialog(
    //       context: context,
    //       builder: (_) => PlatformAlertDialog(
    //         title: Text('Are you sure to Logout?'),
    //         content: Text('We hate to see you leave...'),
    //         actions: [
    //           PlatformDialogAction(
    //             child: Text('Cancel'),
    //             onPressed: () {
    //               getIt<ILogger>()
    //                   .logEvent(LogEvents.EVENT_LOGOUT_DIALOG_CANCEL);
    //               Navigator.of(context).pop(false);
    //             },
    //           ),
    //           PlatformDialogAction(
    //             child: Text('Logout'),
    //             onPressed: () {
    //               getIt<ILogger>().logEvent(LogEvents.EVENT_LOGOUT_DIALOG_OK);
    //               context.read<AuthBloc>().add(AuthEvent.signedOut());
    //             },
    //           ),
    //         ],
    //       ),
    //     ) ??
    //     false;
  }
}

class _ProfileItems {
  final String iconAsset;
  final String title;

  _ProfileItems({@required this.iconAsset, @required this.title});

  Widget _buildWidget(GestureTapCallback onTap) {
    return ListTile(
      onTap: onTap,
      leading: Container(
        width: 36,
        height: 36,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage(iconAsset),
          ),
        ),
      ),
      title: Text(
        title,
        style: TextStyle(color: ColorAssets.blueHaiti, fontSize: 16),
      ),
    );
  }
}
