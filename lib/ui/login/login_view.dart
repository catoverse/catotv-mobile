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
              body: Center(
                child: ElevatedButton(
                  onPressed: () => model.performLogin(),
                  child: Text("Login"),
                ),
              ),
            ));
  }
}
