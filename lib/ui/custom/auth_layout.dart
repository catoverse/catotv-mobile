import 'package:feed/ui/global/styles.dart';
import 'package:feed/ui/global/theme.dart';
import 'package:feed/ui/global/ui_helpers.dart';
import 'package:flutter/material.dart';

class AuthLayout extends StatelessWidget {
  final String title, subtitle, googleButtonText;
  final String? secondaryButtonText;
  final Function onMainButtonTapped;
  final Function onGoogleButtonTapped;
  final Function? onSecondaryButtonTapped;
  final Function? onForgotButtonTapped;
  final bool showSecondaryButton;
  final bool busy;
  final Widget form;

  const AuthLayout(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.googleButtonText,
      required this.onMainButtonTapped,
      required this.onGoogleButtonTapped,
      required this.form,
      this.onSecondaryButtonTapped,
      this.onForgotButtonTapped,
      this.secondaryButtonText,
      this.showSecondaryButton: false,
      this.busy: false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final uiHelpers = UIHelpers.fromContext(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: AppColors.textPrimary,
          onPressed: () {},
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: [
          Text(title, style: uiHelpers.heading),
          SizedBox(
            height: uiHelpers.blockSizeVertical,
          ),
          Text(subtitle, style: uiHelpers.subheading),
          uiHelpers.verticalSpaceMedium!,
          ElevatedButton.icon(
            onPressed: () => onGoogleButtonTapped(),
            icon: Icon(Icons.g_translate),
            label: Text(
              googleButtonText,
              style: uiHelpers.button,
            ),
            style: raisedButtonStyle.copyWith(
                backgroundColor: MaterialStateProperty.all(AppColors.google)),
          ),
          uiHelpers.verticalSpaceMedium!,
          Text(
            "or continue using",
            style: uiHelpers.subheading,
            textAlign: TextAlign.center,
          ),
          uiHelpers.verticalSpaceMedium!,
          form,
          uiHelpers.verticalSpaceMedium!,
          ElevatedButton(
            onPressed: () => onMainButtonTapped(),
            child: BusyWidget(
              isBusy: busy,
              child: Text(
                "Continue",
                style: uiHelpers.button,
              ),
            ),
            style: raisedButtonStyle,
          ),
          uiHelpers.verticalSpaceHigh!
        ],
      ),
      bottomNavigationBar: showSecondaryButton
          ? Container(
              padding: const EdgeInsets.all(20.0),
              child: TextButton(
                onPressed: () => onSecondaryButtonTapped!(),
                child: Text(secondaryButtonText!),
                style: raisedButtonStyle,
              ),
            )
          : Container(
              height: 10,
            ),
    );
  }
}

class BusyWidget extends StatelessWidget {
  final Widget child;
  final bool isBusy;

  const BusyWidget({Key? key, required this.child, this.isBusy: false})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    if (isBusy) {
      return CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(AppColors.onPrimary),
      );
    } else {
      return child;
    }
  }
}
