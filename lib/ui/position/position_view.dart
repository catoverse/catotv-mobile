import 'package:feed/ui/global/screen.dart';
import 'package:feed/ui/global/styles.dart';
import 'package:feed/ui/global/theme.dart';
import 'package:feed/ui/global/ui_helpers.dart';
import 'package:feed/ui/position/position_viewmodel.dart';
import 'package:feed/ui/position/widgets/info_card_widget.dart';
import 'package:flutter/material.dart';

class PositionView extends StatelessWidget {
  const PositionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenBuilder<PositionViewModel>(
      viewModel: PositionViewModel(),
      onModelReady: (model) => model.getData(),
      builder: (context, uiHelpers, model) => Scaffold(
        appBar: AppBar(
          leading: BackButton(
            onPressed: model.onTapBack,
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
          iconTheme: const IconThemeData(color: AppColors.textPrimary),
        ),
        body: model.isBusy
            ? const Center(child: CircularProgressIndicator())
            : model.somethingWrong
                ? const Center(child: Text('Something went wrong'))
                : SingleChildScrollView(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Text(
                          model.heading,
                          style: uiHelpers.heading,
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'Invite your friends and jump out the waitlist',
                          style: uiHelpers.subheading,
                        ),
                        uiHelpers.verticalSpaceHigh!,
                        Text(
                          'Here\'s your referral code',
                          style: uiHelpers.button,
                        ),
                        uiHelpers.verticalSpaceLow!,
                        GestureDetector(
                          onTap: model.onTapCopy,
                          child: Card(
                            color: AppColors.grey,
                            child: Padding(
                              padding: ScalingHelper().all(16),
                              child: Text(
                                model.refferalCode,
                                style: uiHelpers.heading?.copyWith(
                                  fontSize: 40,
                                  letterSpacing: 20,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                        uiHelpers.verticalSpaceLow!,
                        Text(
                          'Tap to copy your code',
                          style: uiHelpers.subheading?.copyWith(
                            fontSize: 14,
                          ),
                        ),
                        uiHelpers.verticalSpaceLow!,
                        ElevatedButton(
                          style: raisedButtonStyle.copyWith(
                              textStyle: MaterialStateProperty.all<TextStyle>(
                                  uiHelpers.button!)),
                          onPressed: model.onTapShare,
                          child: const Text('Share Now'),
                        ),
                        uiHelpers.verticalSpaceHigh!,
                        if (model.yourPosition != null)
                          InfoCardWidget(
                            uiHelpers: uiHelpers,
                            label: 'Your Position',
                            value: model.yourPosition!,
                          ),
                        if (model.referralsDone != null) ...[
                          uiHelpers.verticalSpaceLow!,
                          InfoCardWidget(
                            uiHelpers: uiHelpers,
                            label: 'Referrals Done',
                            value: model.referralsDone!,
                          ),
                        ],
                      ],
                    ),
                  ),
      ),
    );
  }
}
