import 'package:cato_feed/application/video_player/video_player_bloc.dart';
import 'package:cato_feed/injection.dart';
import 'package:cato_feed/presentation/screens/home_feed/home_feed_screen.dart';
import 'package:cato_feed/presentation/screens/playground/playground.dart';
import 'package:cato_feed/presentation/screens/profile/user_profile.dart';
import 'package:cato_feed/presentation/screens/search/search.dart';
import 'package:cato_feed/presentation/utils/assets/color_assets.dart';
import 'package:cato_feed/presentation/utils/common.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:youtube_player_webview/core/youtube_player.dart';
import 'package:youtube_player_webview/utils/youtube_player_controller.dart';
import 'package:youtube_player_webview/utils/youtube_player_flags.dart';
import 'package:youtube_player_webview/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    makeStatusBarWhite();
    return BlocProvider(create: (context) => getIt<VideoPlayerBloc>(), child: HomeScreenPage(),);
  }
}

class HomeScreenPage extends StatefulWidget {
  @override
  _HomeScreenPageState createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {


  int _currentPage = 0;
  final PageStorageBucket _bucket = PageStorageBucket();
  YoutubePlayerController _controller;
  bool _isPlayerReady = false;

  @override
  void initState() {
    _controller = YoutubePlayerController(
      initialVideoId: '',
      flags: YoutubePlayerFlags(
        autoPlay: true,
        enableCaption: false,
        controlsVisibleAtStart: false,
        hideControls: false,
        loop: false,
        disableDragSeek: false,
        startAt: 0,
      ),
    );
    super.initState();
  }

  @override
  void deactivate() {
    _controller.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    _controller.dispose();
    _controller = null;
    super.dispose();
  }

  HomeFeedScreen _homeFeedScreen;
  Widget _getPage(int index, Container player) {
    switch(index) {
      case 0: {
        if(_homeFeedScreen == null) {
          _homeFeedScreen = HomeFeedScreen(player: player, controller: _controller,);
        } else {
          _homeFeedScreen.updatePlayer(player: player);
        }

        return _homeFeedScreen;
      }
      case 1: return SearchScreen();
      case 2: return PlaygroundScreen();
      case 3: return UserProfileScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    makeStatusBarWhite();
    return YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: _controller,
        onReady: () {
          _isPlayerReady = true;
        },
        bottomActions: [
          const SizedBox(width: 14.0),
          CurrentPosition(),
          const SizedBox(width: 8.0),
          ProgressBar(
            controller: _controller,
            isExpanded: true,
          ),
          RemainingDuration(),
          const SizedBox(width: 14.0),
          FullScreenButton(),
        ],
        onEnded: (e) {
          context
              .read<VideoPlayerBloc>()
              .add(VideoPlayerEvent.setCurrentPlayablePlayingId(null));
        },
        showVideoProgressIndicator: true,
      ),
      onEnterFullScreen: () async {
        await Future.delayed(Duration(milliseconds: 500));
        _controller.play();
      },
      onExitFullScreen: () async {
        await Future.delayed(Duration(milliseconds: 500));
        _controller.play();
      },
      builder: (context, player) {
        return PlatformScaffold(
          backgroundColor: ColorAssets.black32,
          body: SafeArea(
            child: Container(
              child: PageStorage(
                bucket: _bucket,
                child: _getPage(_currentPage, player),
              ),
            ),
          ),
          bottomNavBar: PlatformNavBar(
            items: _buildNavBar(context),
            currentIndex: _currentPage,
            backgroundColor: Colors.white,
            material: (_, __) => MaterialNavBarData(
              selectedItemColor: Color(0xFF51DED6),
              showSelectedLabels: true,
              showUnselectedLabels: true,
              unselectedItemColor: Color(0xFF323232),
              type: BottomNavigationBarType.fixed,
            ),
            cupertino: (_, __) => CupertinoTabBarData(
              activeColor: Color(0xFF51DED6),
              backgroundColor: Colors.white,
              inactiveColor: Color(0xFF323232),
            ),
            itemChanged: (value) {
              setState(() {
                _currentPage = value;
              });
            },
          ),
        );
      },
    );
  }

  List<BottomNavigationBarItem> _buildNavBar(context) {
    return [
      BottomNavigationBarItem(
        icon: Icon(Icons.home_outlined, color: Color(0xFF323232)),
        activeIcon: Icon(Icons.home, color: Color(0xFF51DED6)),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.search_outlined, color: Color(0xFF323232)),
        label: 'Explore',
        activeIcon: Icon(Icons.search, color: Color(0xFF51DED6)),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.widgets_outlined, color: Color(0xFF323232)),
        label: 'Playground',
        activeIcon: Icon(Icons.widgets_rounded, color: Color(0xFF51DED6)),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.account_circle_outlined, color: Color(0xFF323232)),
        label: 'My Profile',
        activeIcon: Icon(Icons.account_circle, color: Color(0xFF51DED6)),
      ),
    ];
  }
}
