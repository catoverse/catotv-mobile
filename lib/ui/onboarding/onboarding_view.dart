import 'package:feed/ui/global/screen.dart';
import 'package:feed/ui/global/styles.dart';
import 'package:feed/ui/global/theme.dart';
import 'package:feed/ui/onboarding/items.dart';
import 'package:flutter/material.dart';
import 'onboarding_viewmodel.dart';

class OnboardingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenBuilder<OnboardingViewModel>(
      viewModel: OnboardingViewModel(),
      onModelReady: (model) => model.onModelReady(),
      builder: (context, uiHelpers, model) => WillPopScope(
          onWillPop: model.showExitSnackbar,
          child: model.isBusy
              ? Scaffold(
                  body: Center(
                    child: CircularProgressIndicator(),
                  ),
                )
              : Scaffold(
                  appBar: AppBar(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    leading: IconButton(
                        onPressed: () => model.showInvite(),
                        icon: Icon(
                          Icons.help,
                          color: AppColors.textPrimary,
                        )),
                    actions: [
                      Container(
                        margin: EdgeInsets.only(right: 8.0),
                        child: TextButton(
                          onPressed: () => model.loginWithGoogle(),
                          child: Text("Sign in", style: uiHelpers.button),
                        ),
                      )
                    ],
                  ),
                  body: OnboardingBodyListItem(
                    item: kOnboardingItem,
                  ),
                  bottomNavigationBar: Container(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextButton(
                            onPressed: () => model.requestInvite(),
                            child: Text.rich(TextSpan(children: [
                              TextSpan(
                                  text: "Need an invite? ",
                                  style: uiHelpers.button!
                                      .copyWith(color: AppColors.textPrimary)),
                              TextSpan(
                                  text: "Request",
                                  style: uiHelpers.button!
                                      .copyWith(color: AppColors.primary)),
                            ]))),
                        SizedBox(
                          height: 4,
                        ),
                        ElevatedButton(
                          style: raisedButtonStyle.copyWith(
                              textStyle: MaterialStateProperty.all<TextStyle>(
                                  uiHelpers.button!)),
                          onPressed: () => model.navigateToRestrictedHome(),
                          child: Text("Get Started"),
                        ),
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.all(8.0),
                          margin: EdgeInsets.symmetric(vertical: 4.0),
                          child: Wrap(
                            alignment: WrapAlignment.center,
                            children: [
                              Text(
                                "By getting started you agree to our ",
                              ),
                              InkWell(
                                  onTap: () => model.openTermsOfService(),
                                  child: Text("Terms & Privacy",
                                      style:
                                          TextStyle(color: AppColors.primary))),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
    );
  }

  // Widget _pageDotsIndicator(bool isActive) {
  //   return Container(
  //     height: 10,
  //     child: AnimatedContainer(
  //       duration: Duration(milliseconds: 150),
  //       margin: EdgeInsets.symmetric(horizontal: 4.0),
  //       height: isActive ? 10 : 8.0,
  //       width: isActive ? 12 : 8.0,
  //       decoration: BoxDecoration(
  //         shape: BoxShape.circle,
  //         color: isActive ? Colors.indigo : Colors.indigo[100],
  //       ),
  //     ),
  //   );
  // }

  // List<Widget> _buildPageIndicator(int selectedindex) {
  //   List<Widget> list = [];
  //   for (int i = 0; i < onboardingItems.length; i++) {
  //     list.add(i == selectedindex
  //         ? _pageDotsIndicator(true)
  //         : _pageDotsIndicator(false));
  //   }
  //   return list;
  // }
}
