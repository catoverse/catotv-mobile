import 'package:cato_feed/application/auth/auth.dart';
import 'package:cato_feed/application/user_profile/user_profile.dart';
import 'package:cato_feed/injection.dart';
import 'package:cato_feed/presentation/routes/Router.gr.dart';
import 'package:cato_feed/presentation/screens/home/main_feed.dart';
import 'package:cato_feed/presentation/screens/home/saved_post_feed.dart';
import 'package:cato_feed/presentation/screens/profile/profile.dart';
import 'package:cato_feed/presentation/utils/assets/color_assets.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cato_feed/domain/core/i_logger.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    initDynamicLinks();
  }

  void initDynamicLinks() async {
    FirebaseDynamicLinks.instance.onLink(
        onSuccess: (PendingDynamicLinkData dynamicLink) async {
      var isAuthenticated = context
          .bloc<AuthBloc>()
          .state
          .maybeWhen(orElse: () => false, authenticated: (_) => true);

      if(isAuthenticated) {
        final Uri deepLink = dynamicLink?.link;

        if (deepLink != null) {
          context.navigator.push(deepLink.path);
        }
      } else {
        context.navigator.push(CatoRoutes.onboardingScreen);
      }
    }, onError: (OnLinkErrorException e) async {
      getIt<ILogger>().logException(e);
    });
  }

  List<Widget> _pages = [
    MainFeedScreen(
      key: PageStorageKey('feedScreen'),
    ),
    ProfileScreen(
      key: PageStorageKey('profileScreen'),
    )
  ];
  final Widget _savedPostScreen =
      SavedPostScreen(key: PageStorageKey('SavedPostScreen'));
  int _currentPage = 0;
  bool showSaveNavBar = false;
  final PageStorageBucket _bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    var photoUrl = context
        .bloc<AuthBloc>()
        .state
        .maybeWhen(orElse: () => '', authenticated: (user) => user.photoUrl);
    return BlocProvider(
      create: (_) => getIt<UserProfileBloc>()..add(UserProfileEvent.refresh()),
      child: MultiBlocListener(
        listeners: [
          BlocListener<UserProfileBloc, UserProfileState>(
            listener: (_, state) {
              var shouldShowSaveNav =
                  !(state.likedVideosId.isEmpty && state.savedVideosId.isEmpty);
              if (shouldShowSaveNav != showSaveNavBar) {
                setState(() {
                  showSaveNavBar = shouldShowSaveNav;
                  if (!showSaveNavBar) {
                    _currentPage = 0;
                  }
                });
              }
            },
          ),
        ],
        child: PlatformScaffold(
          backgroundColor: ColorAssets.black32,
          body: Container(
            child: PageStorage(
              bucket: _bucket,
              child: _getCurrentPage(_currentPage),
            ),
          ),
          bottomNavBar: PlatformNavBar(
            items: _buildNavBar(context, photoUrl),
            currentIndex: _currentPage,
            backgroundColor: ColorAssets.black21,
            material: (_, __) => MaterialNavBarData(
              selectedItemColor: Colors.white,
              showSelectedLabels: false,
              showUnselectedLabels: false,
            ),
            itemChanged: (value) {
              setState(() {
                _currentPage = value;
              });
            },
          ),
        ),
      ),
    );
  }

  Widget _getCurrentPage(int currentPage) {
    if (showSaveNavBar) {
      if (_currentPage == 0) {
        return _pages[0];
      } else if (_currentPage == 1) {
        return _savedPostScreen;
      } else {
        return _pages[1];
      }
    } else {
      return _pages[currentPage];
    }
  }

  List<BottomNavigationBarItem> _buildNavBar(context, photoUrl) {
    var baseNav = [
      BottomNavigationBarItem(
        icon: Icon(Icons.home_outlined, color: Colors.white),
        activeIcon: Icon(Icons.home, color: Colors.white),
        title: Text('Home'),
      ),
      BottomNavigationBarItem(
        icon: Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: NetworkImage(photoUrl),
            ),
          ),
        ),
        title: Text('Profile'),
      ),
    ];
    var savePostsNav = BottomNavigationBarItem(
        icon: Icon(Icons.bookmark_border, color: Colors.white),
        title: Text('Home'),
        activeIcon: Icon(Icons.bookmark, color: Colors.white));
    if (showSaveNavBar) {
      baseNav.insert(1, savePostsNav);
    }
    return baseNav;
  }
}
