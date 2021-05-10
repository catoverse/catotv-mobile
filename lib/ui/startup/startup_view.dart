import 'package:feed/ui/global/screen.dart';
import 'package:feed/ui/global/theme.dart';
import 'package:feed/ui/startup/startup_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class StartUpView extends StatelessWidget {
  const StartUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenBuilder<StartUpViewModel>(
      onModelReady: (model) =>
          SchedulerBinding.instance?.addPostFrameCallback((timeStamp) {
        model.runStartupLogic();
      }),
      builder: (context, model, child) => Scaffold(
        backgroundColor: Colors.indigo,
        body: Center(
          child: Text(
            'Cato.tv',
            style: Theme.of(context).textTheme.headline3!.copyWith(
                color: AppColors.onPrimary, fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
        ),
        bottomNavigationBar: Container(
          padding: EdgeInsets.all(20.0),
          child: Text(
            "FROM\nCATOVERSE",
            style: TextStyle(
                color: AppColors.onPrimary,
                fontSize: 14,
                letterSpacing: 1.45,
                fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      viewModel: StartUpViewModel(),
    );
  }
}
