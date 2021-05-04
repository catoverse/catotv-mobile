import 'package:feed/ui/global/screen.dart';
import 'package:flutter/material.dart';

import 'login_viewmodel.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenBuilder<LoginViewModel>(
        viewModel: LoginViewModel(),
        builder: (context, uiHelpers, model) => Scaffold(
              appBar: AppBar(
                automaticallyImplyLeading: false,
              ),
              body: Text("Please Login here"),
            ));
  }
}
