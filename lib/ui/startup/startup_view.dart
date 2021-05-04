import 'package:feed/ui/global/screen.dart';
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
        body: Center(
          child: Text('Startup View'),
        ),
      ),
      viewModel: StartUpViewModel(),
    );
  }
}
