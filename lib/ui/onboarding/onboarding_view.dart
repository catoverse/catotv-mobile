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
              ? const Scaffold(
                  body: Center(
                    child: CircularProgressIndicator(),
                  ),
                )
              : Scaffold(
                  appBar: AppBar(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    automaticallyImplyLeading: false,
                    actions: [
                      Container(
                        margin: const EdgeInsets.only(right: 8.0),
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
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            GestureDetector(
                                onTap: () => model.showInvite(),
                                child: const Icon(
                                  Icons.help,
                                  color: AppColors.textPrimary,
                                  size: 20,
                                )),
                            TextButton(
                              onPressed: () => model.requestInvite(),
                              child: const Text.rich(
                                TextSpan(
                                  style: TextStyle(color: AppColors.textPrimary),
                                  children: [
                                    TextSpan(text: "Need an invite? "),
                                    TextSpan(text: "Request", style: TextStyle(color: AppColors.primary)),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        ElevatedButton(
                          style: raisedButtonStyle.copyWith(textStyle: MaterialStateProperty.all<TextStyle>(uiHelpers.button!)),
                          onPressed: () => model.navigateToRestrictedHome(),
                          child: const Text("Get Started"),
                        ),
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(8.0),
                          margin: const EdgeInsets.symmetric(vertical: 4.0),
                          child: Wrap(
                            alignment: WrapAlignment.center,
                            children: [
                              const Text(
                                "By getting started you agree to our ",
                                style: TextStyle(color: AppColors.textSecondary),
                              ),
                              InkWell(
                                  onTap: () => model.openTermsOfService(),
                                  child: const Text("Terms & Privacy", style: TextStyle(color: AppColors.primary))),
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
