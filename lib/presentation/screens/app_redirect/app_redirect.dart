import 'dart:typed_data';

import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cato_feed/application/app_redirect/app_redirect_bloc/app_redirect_bloc.dart';
import 'package:cato_feed/application/app_redirect/app_redirect_selection_bloc/app_redirect_selection_bloc.dart';
import 'package:cato_feed/application/app_redirect/installed_apps_bloc/installed_apps_bloc.dart';
import 'package:cato_feed/customplugins/customclock/customclock.dart';
import 'package:cato_feed/injection.dart';
import 'package:cato_feed/presentation/utils/assets/color_assets.dart';
import 'package:cato_feed/presentation/utils/assets/font_assets.dart';
import 'package:cato_feed/presentation/utils/assets/image_assets.dart';
import 'package:device_apps/device_apps.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:path/path.dart';

class AppRedirectScreen extends StatelessWidget {
  final int startStep;

  const AppRedirectScreen({this.startStep = 1});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) =>
              getIt<AppRedirectBloc>()..add(AppRedirectEvent.initialize(startStep)),
        ),
        BlocProvider(
          create: (_) =>
              getIt<InstalledAppsBloc>()..add(InstalledAppsEvent.initialize()),
        ),
        BlocProvider(
          create: (_) => getIt<AppRedirectSelectionBloc>(),
        )
      ],
      child: AppRedirectPage(),
    );
  }
}

class AppRedirectPage extends StatefulWidget {
  @override
  _AppRedirectPageState createState() => _AppRedirectPageState();
}

class _AppRedirectPageState extends State<AppRedirectPage>
    with WidgetsBindingObserver {
  List<_AppRedirectItems> _appRedirectItems = [
    _AppRedirectItems(
        title: 'Apps To Restrict',
        body:
            'Select the apps that distract you. You\'ll be redirected to Cato whenever you try to open these apps.'),
    _AppRedirectItems(
        title: 'Set Timing',
        body:
            'This is when you want to restrict yourself from using these apps.'),
    _AppRedirectItems(title: 'Permissions', body: ''),
  ];

  Widget _buildFeatureWidget(
      BuildContext context, int currentStep, AppRedirectState state) {
    if (currentStep == 1) {
      return _buildAppSelect();
    } else if (currentStep == 2) {
      return _buildTimingSet(state);
    } else if (currentStep == 3) {
      return Padding(
        child: Image.asset(ImageAssets.Release.permission_lock),
        padding: EdgeInsets.only(right: 40, bottom: 10),
      );
    } else {
      return Container();
    }
  }

  Widget _buildAppSelect() {
    return BlocBuilder<InstalledAppsBloc, InstalledAppsState>(
      builder: (context, state) {
        if (state.installedApps == null) {
          return Expanded(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
        return Expanded(
          child: StaggeredGridView.builder(
            itemCount: state.installedApps?.size,
            padding: EdgeInsets.only(left: 32, right: 32, bottom: 40),
            gridDelegate: SliverStaggeredGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              staggeredTileBuilder: (__) {
                return StaggeredTile.fit(1);
              },
              staggeredTileCount: state.installedApps?.size,
              mainAxisSpacing: 14,
              crossAxisSpacing: 14,
            ),
            itemBuilder: (context, index) {
              var app = state.installedApps[index];
              return GestureDetector(
                child: Stack(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Padding(
                            child: (app is ApplicationWithIcon)
                                ? Image.memory(app.icon)
                                : Container(),
                            padding:
                                EdgeInsets.only(left: 10, right: 10, top: 5),
                          ),
                          Text(
                            app.appName,
                            style: TextStyle(
                                color: ColorAssets.black21,
                                fontSize: 14,
                                fontFamily: FontAssets.Roboto),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                    ),
                    BlocBuilder<AppRedirectSelectionBloc,
                        AppRedirectSelectionState>(
                      builder: (context, state) {
                        var isSelected = state.isAppSelected(app.packageName);
                        return Positioned.fill(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.all(
                                Radius.circular(16.0),
                              ),
                              border: Border.all(
                                color: isSelected
                                    ? ColorAssets.teal
                                    : Colors.white,
                                width: isSelected ? 3 : 0,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
                onTap: () {
                  context.read()<AppRedirectSelectionBloc>().add(
                      AppRedirectSelectionEvent.selectOrRemovePackage(
                          app.packageName));
                },
              );
            },
          ),
        );
      },
    );
  }

  List<String> _weekDays = ['S', 'M', 'T', 'W', 'T', 'F', 'S'];

  String clockStartTime;

  String clockEndTime;

  Widget _buildTimingSet(AppRedirectState state) {
    return Flex(
      direction: Axis.vertical,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        // Clock
        CustomClock(state.startTime ?? '', state.endTime ?? '', (startTime, endTime) {
          clockStartTime = startTime;
          clockEndTime = endTime;
        }),
        SizedBox(
          height: 10,
        ),
        Container(
          margin: EdgeInsets.only(left: 32, right: 32, top: 8),
          child: Text(
            'Days the restriction should apply',
            style: TextStyle(
                color: ColorAssets.black2150o,
                fontFamily: FontAssets.Roboto,
                fontSize: 14),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        // Week Days
        Align(
          alignment: Alignment.center,
          child: Container(
            margin: EdgeInsets.only(left: 16, right: 16),
            height: 40,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              addRepaintBoundaries: false,
              itemCount: _weekDays.length,
              separatorBuilder: (_, __) {
                return SizedBox(
                  width: 5,
                );
              },
              itemBuilder: (context, index) {
                // Index starts from 0 while days start from 1 (Sunday) to 7(Saturday)
                var isSelected = state.selectedWeekDays.contains(index + 1);
                return GestureDetector(
                  child: Container(
                    width: 38,
                    height: 38,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: isSelected ? ColorAssets.teal : Colors.white),
                    child: Center(
                      child: Text(
                        _weekDays[index],
                        style: TextStyle(
                          fontFamily: FontAssets.Roboto,
                          color:
                              isSelected ? Colors.white : ColorAssets.black21,
                        ),
                      ),
                    ),
                  ),
                  onTap: () {
                    context
                        .read()<AppRedirectBloc>()
                        .add(AppRedirectEvent.addOrRemoveWeekDay(index + 1));
                  },
                );
              },
            ),
          ),
        )
      ],
    );
  }

  AppLifecycleState _lastLifecycleState;
  AppRedirectBloc bloc;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance?.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      print("onResumed");
      if (_lastLifecycleState != null &&
          _lastLifecycleState != AppLifecycleState.resumed) {
        if (bloc == null) {
          print("bloc is null");
        }
        bloc?.add(AppRedirectEvent.checkPermissions());
      }
      _lastLifecycleState = state;
    } else {
      print("not onResumed");
      _lastLifecycleState = state;
    }
  }

  void _onNextButtonPressed(BuildContext context, AppRedirectState state) {
    switch (state.currentStep) {
      case 1:
        {
          bloc..add(AppRedirectEvent.changeStep(state.currentStep + 1));
          return;
        }
      case 2:
        {
          bloc
            ..add(AppRedirectEvent.updateTime(clockStartTime, clockEndTime))
            ..add(AppRedirectEvent.changeStep(state.currentStep + 1));
          return;
        }
      case 3:
        {
          if (state.appUsagePermission == PermissionState.NOT_ALLOWED) {
            bloc?.add(AppRedirectEvent.requestAppUsagePermission());
            return;
          }

          if (state.batteryPermission == PermissionState.NOT_ALLOWED) {
            bloc?.add(AppRedirectEvent.requestBatteryPermission());
            return;
          }

          if(state.overlayPermission == PermissionState.NOT_ALLOWED) {
            bloc?.add(AppRedirectEvent.requestOverlayPermission());
            return;
          }

          bloc?.add(AppRedirectEvent.startAppRedirect());
          ExtendedNavigator.of(context)?.pop();
          return;
        }
    }
  }

  @override
  Widget build(BuildContext context) {
    // ignore: close_sinks
    if (bloc == null) bloc = context.read<AppRedirectBloc>();
    return PlatformScaffold(
      backgroundColor: ColorAssets.black21,
      body: BlocConsumer<AppRedirectBloc, AppRedirectState>(
        listener: (_, state) {
          if (state.blockedPackages != null) {
            // ignore: close_sinks
            var bloc = context.read()<AppRedirectSelectionBloc>();
            if (bloc.state.selectedPackages == null) {
              context.read<AppRedirectSelectionBloc>().add(
                  AppRedirectSelectionEvent.updateSelectedPackages(
                      state.blockedPackages ?? []));
            }
          }
          if (state.startTime != null &&
              state.endTime != null &&
              clockStartTime == null &&
              clockEndTime == null) {
            clockStartTime = state.startTime;
            clockEndTime = state.endTime;
          }
        },
        builder: (_, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              Container(
                margin: EdgeInsets.only(top: 20, left: 32),
                child: Text(
                  'Step ${state.currentStep}/${state.totalSteps}',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                child: LinearProgressIndicator(
                  minHeight: 2,
                  value: state.currentStep / 3.0,
                  backgroundColor: Color(0x1AFFFFFF),
                  valueColor: AlwaysStoppedAnimation(ColorAssets.teal),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            _appRedirectItems[state.currentStep - 1].title,
                            style: TextStyle(
                              color: ColorAssets.black21,
                              fontSize: 22,
                              fontFamily: FontAssets.Roboto,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 12,
                              left: 32,
                              right: 32,
                            ),
                            child: Text(
                              (state.currentStep == 3)
                                  ? state.getPermissionText()
                                  : _appRedirectItems[state.currentStep - 1]
                                      .body,
                              style: TextStyle(
                                color: ColorAssets.black2150o,
                                fontSize: 14,
                                fontFamily: FontAssets.Roboto,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          _buildFeatureWidget(
                              context, state.currentStep, state),
                          SizedBox(
                            height: 20,
                          )
                        ],
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          color: Colors.transparent,
                          margin: EdgeInsets.only(bottom: 10),
                          child: Row(
                            children: [
                              Spacer(
                                flex: 1,
                              ),
                              PlatformButton(
                                color: ColorAssets.black21,
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 40),
                                child: Text(
                                  'Back',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontFamily: FontAssets.Roboto,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                onPressed: () {
                                  if (state.currentStep == 1) {
                                    ExtendedNavigator.of(context)?.pop();
                                  } else {
                                    bloc?.add(AppRedirectEvent.changeStep(
                                        state.currentStep - 1));
                                  }
                                },
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width / 2),
                                child: PlatformButton(
                                  color: ColorAssets.teal,
                                  child: AutoSizeText(
                                    (state.currentStep == 3)
                                        ? state.getPermissionButtonText()
                                        : 'Next',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontFamily: FontAssets.Roboto,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    maxLines: 1,
                                  ),
                                  onPressed: () {
                                    _onNextButtonPressed(context, state);
                                  },
                                  padding: EdgeInsets.symmetric(
                                    vertical: 10,
                                    horizontal:
                                        (state.currentStep == 3 && state.getPermissionButtonText() != "Finish") ? 20 : 40,
                                  ),
                                ),
                              ),
                              Spacer(
                                flex: 1,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class _AppRedirectItems {
  final String title;
  final String body;

  _AppRedirectItems({@required this.title, @required this.body});
}
