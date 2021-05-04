import 'package:feed/ui/global/screen.dart';
import 'package:flutter/material.dart';

import 'home_viewmodel.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenBuilder<HomeViewModel>(
        viewModel: HomeViewModel(),
        builder: (context, uiHelpers, model) => Scaffold(
              appBar: AppBar(),
            ));
  }
}
