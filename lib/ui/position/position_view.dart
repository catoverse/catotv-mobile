import 'package:feed/ui/global/screen.dart';
import 'package:feed/ui/global/styles.dart';
import 'package:feed/ui/global/theme.dart';
import 'package:feed/ui/global/ui_helpers.dart';
import 'package:feed/ui/position/position_viewmodel.dart';
import 'package:flutter/material.dart';

class PositionView extends StatelessWidget {
  const PositionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenBuilder<PositionViewModel>(
      viewModel: PositionViewModel(),
      onModelReady: (model) => model.getData() ,
      builder: (context, uiHelpers, model) => Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          iconTheme: const IconThemeData(color: AppColors.textPrimary),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Text(
                "Thank You\n",
                style: uiHelpers.heading,
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
                    ),
                  ),
                ),
              ),
              uiHelpers.verticalSpaceLow!,
              Text(
                'Tap to copy your code',
                style: uiHelpers.subheading?.copyWith(
                  fontSize: 14,
                  // letterSpacing: 20,
                ),
              ),
              uiHelpers.verticalSpaceLow!,
              ElevatedButton(
                style: raisedButtonStyle.copyWith(
                    textStyle: MaterialStateProperty.all<TextStyle>(
                        uiHelpers.button!)),
                onPressed: () {},
                child: const Text('Share Now'),
              ),
              uiHelpers.verticalSpaceHigh!,
              Container(
                margin: ScalingHelper().fromLTRB(16, 0, 16, 8),
                height: uiHelpers.blockSizeVertical! * 10,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.grey,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.auto_awesome,
                      color: AppColors.primary,
                    ),
                    Expanded(
                      child: Column(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
