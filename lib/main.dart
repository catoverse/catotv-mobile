import 'package:feed/app/stacked_setup.dart';
import 'package:feed/firebase/analytics.dart';
import 'package:feed/ui/global/theme.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:stacked_services/stacked_services.dart';

import 'app/app.locator.dart';
import 'app/app.router.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await setupLocator();
  setupBottomSheetUi();
  runApp(MyApp());
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
