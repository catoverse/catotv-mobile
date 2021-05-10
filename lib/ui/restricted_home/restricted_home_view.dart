import 'package:feed/ui/global/screen.dart';
import 'package:flutter/material.dart';

import 'restricted_home_viewmodel.dart';

class RestrictedHomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenBuilder<RestrictedHomeViewModel>(
        viewModel: RestrictedHomeViewModel(),
        builder: (context, uiHelpers, model) => Scaffold(
              appBar: AppBar(
                automaticallyImplyLeading: false,
              ),
            ));
  }
}
