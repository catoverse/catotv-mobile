import 'package:feed/ui/global/screen.dart';
import 'package:feed/ui/global/styles.dart';
import 'package:flutter/material.dart';

import 'items.dart';
import 'onboarding_viewmodel.dart';

class OnboardingView extends StatelessWidget {
  List<Widget> _buildPageIndicator(int selectedindex) {
    List<Widget> list = [];
    for (int i = 0; i < onboardingItems.length; i++) {
      list.add(i == selectedindex
          ? _pageDotsIndicator(true)
          : _pageDotsIndicator(false));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return ScreenBuilder<OnboardingViewModel>(
      viewModel: OnboardingViewModel(),
      onModelReady: (model) => model.getPosts(),
      builder: (context, uiHelpers, model) => WillPopScope(
          onWillPop: model.showExitSnackbar,
          child: Scaffold(
            body: Column(
              children: [
                Expanded(
                  child: PageView.builder(
                    onPageChanged: model.onPageChanged,
                    itemBuilder: (BuildContext context, int index) =>
                        OnboardingBodyListItem(item: onboardingItems[index]),
                    itemCount: onboardingItems.length,
                  ),
                ),
                Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: _buildPageIndicator(model.currentPage)
                          .map((e) => e)
                          .toList()),
                ),
              ],
            ),
            bottomNavigationBar: Container(
              padding: EdgeInsets.all(20.0),
              child: ElevatedButton(
                style: raisedButtonStyle.copyWith(
                    textStyle: MaterialStateProperty.all<TextStyle>(
                        uiHelpers.button!)),
                onPressed: () => model.navigateToRestrictedHome(),
                child: Text("Get Started"),
              ),
            ),
          )),
    );
  }

  Widget _pageDotsIndicator(bool isActive) {
    return Container(
      height: 10,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 150),
        margin: EdgeInsets.symmetric(horizontal: 4.0),
        height: isActive ? 10 : 8.0,
        width: isActive ? 12 : 8.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isActive ? Colors.indigo : Colors.indigo[100],
        ),
      ),
    );
  }
}
