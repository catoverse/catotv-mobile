import 'package:feed/ui/global/screen.dart';
import 'package:feed/ui/global/styles.dart';
import 'package:feed/ui/global/theme.dart';
import 'package:feed/ui/startup/startup_viewmodel.dart';
import 'package:flutter/material.dart';

class StartUpView extends StatelessWidget {
  const StartUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenBuilder<StartUpViewModel>(
      onModelReady: (model) => model.onModelReady(),
      builder: (context, uiHelpers, model) => Scaffold(
        backgroundColor: Colors.indigo,
        body: Center(
          child: Text(
            'Cato.tv',
            style: Theme.of(context).textTheme.headline3!.copyWith(
                color: AppColors.onPrimary, fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
        ),
        bottomNavigationBar: AnimatedContainer(
          padding: const EdgeInsets.all(20.0),
          duration: const Duration(milliseconds: 200),
          child: model.isBusy
              ? const CircularProgressIndicator()
              : model.isConnected
                  ? const Text(
                      "FROM\nCATOVERSE",
                      style: TextStyle(
                          color: AppColors.onPrimary,
                          fontSize: 14,
                          letterSpacing: 1.45,
                          fontWeight: FontWeight.w500),
                      textAlign: TextAlign.center,
                    )
                  : Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "You're offline",
                          style: uiHelpers.heading!
                              .copyWith(color: AppColors.onPrimary),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          "You seem to have no internet connection\n",
                          style: uiHelpers.button!
                              .copyWith(color: AppColors.onPrimary),
                          textAlign: TextAlign.center,
                        ),
                        OutlinedButton(
                            onPressed: () => model.runStartupLogic(),
                            style: raisedButtonStyle,
                            child: Text(
                              "Retry",
                              style: uiHelpers.button!
                                  .copyWith(color: AppColors.onPrimary),
                            ))
                      ],
                    ),
        ),
      ),
      viewModel: StartUpViewModel(),
    );
  }
}
