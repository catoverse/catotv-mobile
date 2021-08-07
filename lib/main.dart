import 'package:feed/app/stacked_setup.dart';
import 'package:feed/core/services/notification_service.dart';
import 'package:feed/firebase/analytics.dart';
import 'package:feed/ui/global/theme.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:stacked_services/stacked_services.dart';

import 'app/app.locator.dart';
import 'app/app.router.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  await Firebase.initializeApp();

  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  setupBottomSheetUi();

  await locator<NotificationService>().init();

  runApp(MyApp());
}

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  // If you're going to use other Firebase services in the background, such as Firestore,
  // make sure you call `initializeApp` before using other Firebase services.
  // await Firebase.initializeApp();

  await setupLocator();
  await Firebase.initializeApp();

  var title = message.data["title"];
  var body = message.data["body"];
  var videoId = message.data["videoId"];
  var image = message.data["image"];

  await locator<NotificationService>().showVideoNotification(
      videoId: videoId, title: title, body: body, image: image);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cato TV',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        fontFamily: 'AppFont',
        visualDensity: VisualDensity.adaptivePlatformDensity,
        backgroundColor: AppColors.background,
      ),
      navigatorKey: StackedService.navigatorKey,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      navigatorObservers: [locator<AnalyticsService>().getAnalyticsObserver()],
      debugShowCheckedModeBanner: false,
    );
  }
}
