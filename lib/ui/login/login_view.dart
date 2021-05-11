import 'package:feed/ui/custom/auth_layout.dart';
import 'package:feed/ui/global/screen.dart';
import 'package:feed/ui/global/styles.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked_annotations.dart';

import 'login_view.form.dart';
import 'login_viewmodel.dart';

@FormView(fields: [
  FormTextField(name: 'email'),
  FormTextField(name: 'password'),
])
class LoginView extends StatelessWidget with $LoginView {
  @override
  Widget build(BuildContext context) {
    return ScreenBuilder<LoginViewModel>(
        viewModel: LoginViewModel(),
        onModelReady: (model) => listenToFormUpdated(model),
        builder: (context, uiHelpers, model) => AuthLayout(
            title: "Welcome back",
            subtitle: "We're glad to have you back!",
            googleButtonText: "Sign in with Google",
            onMainButtonTapped: () => model.performLogin(),
            onGoogleButtonTapped: () => model.performGoogleLogin(),
            busy: model.isBusy,
            form: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  margin: EdgeInsets.only(bottom: 10.0),
                  decoration: textFieldStyle,
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: 'Your email here', border: InputBorder.none),
                    controller: emailController,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  decoration: textFieldStyle,
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: 'Password', border: InputBorder.none),
                    controller: passwordController,
                  ),
                ),
              ],
            )));
  }
}
