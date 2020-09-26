import 'package:auto_route/auto_route.dart';
import 'package:cato_feed/application/app_redirect_setting/app_redirect_setting_bloc.dart';
import 'package:cato_feed/injection.dart';
import 'package:cato_feed/presentation/routes/Router.gr.dart';
import 'package:cato_feed/presentation/utils/assets/color_assets.dart';
import 'package:cato_feed/presentation/utils/assets/font_assets.dart';
import 'package:cato_feed/presentation/utils/assets/image_assets.dart';
import 'package:cato_feed/presentation/utils/wave_path_clipper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class NoDistractionSettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      child: NoDistractionSettingPage(),
      create: (_) => getIt<AppRedirectSettingBloc>()..add(AppRedirectSettingEvent.initialize()),
    );
  }
}


class NoDistractionSettingPage extends StatelessWidget {

  List<_NoDistractionItems> _noDistractionItems = [
    _NoDistractionItems(iconAsset: ImageAssets.Release.icon_select_apps,
        title: 'Choose Apps to Restrict'),
    _NoDistractionItems(
        iconAsset: ImageAssets.Release.icon_timing, title: 'Set Timing'),
  ];

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      body: Column(
        children: [
          Container(
            height: 75,
            child: Stack(
              children: [
                Align(
                  child: Container(
                    margin: EdgeInsets.only(left: 32),
                    child: InkWell(
                      child: Icon(
                        Icons.arrow_back,
                        color: ColorAssets.blueHaiti,
                      ),
                      onTap: () {
                        ExtendedNavigator.of(context).pop();
                      },
                    ),
                  ),
                  alignment: Alignment.bottomLeft,
                ),
                Align(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 3),
                    child: Text(
                      'NO DISTRACTIONS',
                      style: TextStyle(
                          color: ColorAssets.blueHaiti,
                          fontFamily: FontAssets.SFProDisplay,
                          fontWeight: FontWeight.w300,
                          fontSize: 16),
                    ),
                  ),
                  alignment: Alignment.bottomCenter,
                )
              ],
            ),
          ),
          SizedBox(
            height: 18,
          ),
          Container(
            margin: EdgeInsets.only(top: 32, left: 32, right: 32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Restrict Apps',
                      style: TextStyle(
                        color: ColorAssets.blueHaiti,
                        fontFamily: FontAssets.SFProDisplay,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Restrict apps from opening',
                      style: TextStyle(
                          fontSize: 14,
                          color: ColorAssets.blueHaiti,
                          fontFamily: FontAssets.SFProDisplay,
                          fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
                BlocBuilder<AppRedirectSettingBloc, AppRedirectSettingState>(
                  builder: (context, state) {
                    return CupertinoSwitch(
                      value: state.isEnabled,
                      onChanged: (value) {
                        context.bloc<AppRedirectSettingBloc>()
                            .add(AppRedirectSettingEvent.toggleAppRedirect());
                      },
                      activeColor: ColorAssets.teal,
                    );
                  }
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            margin: EdgeInsets.only(left: 16, right: 16),
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: _noDistractionItems.length,
              physics: NeverScrollableScrollPhysics(),
              addRepaintBoundaries: false,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return _noDistractionItems[index]._buildWidget(() {
                  ExtendedNavigator.of(context).push(
                      CatoRoutes.appRedirectScreen, arguments: AppRedirectScreenArguments(startStep: index+1));
                });
              },
            ),
          ),
          SizedBox(height: 50,),
          Expanded(
            child: ClipPath(
              clipper: WavePathClipper(clipFromTop: true, offset: 4.5),
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
      ),
    );
  }
}

class _NoDistractionItems {
  final String iconAsset;
  final String title;

  _NoDistractionItems({@required this.iconAsset, @required this.title});

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
