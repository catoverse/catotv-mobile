import 'package:feed/ui/global/screen.dart';
import 'package:flutter/material.dart';

import 'onboarding_viewmodel.dart';

class OnboardingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenBuilder<OnboardingViewModel>(
        viewModel: OnboardingViewModel(),
        builder: (context, uiHelpers, model) => Scaffold(
              appBar: AppBar(),
              body: Text("Hello"),
            ));
  }
}
