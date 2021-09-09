import 'package:feed/ui/global/input_field.dart';
import 'package:feed/ui/global/screen.dart';
import 'package:feed/ui/global/theme.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked_annotations.dart';

import 'invite_viewmodel.dart';
import 'invite_view.form.dart';

@FormView(fields: [
  FormTextField(name: 'email'),
])
class InviteView extends StatelessWidget with $InviteView {
  @override
  Widget build(BuildContext context) {
    return ScreenBuilder<InviteViewModel>(
        viewModel: InviteViewModel(),
        onModelReady: (model) => listenToFormUpdated(model),
        builder: (context, uiHelpers, model) => Scaffold(
              appBar: AppBar(
                elevation: 0,
                backgroundColor: Colors.transparent,
                iconTheme: IconThemeData(color: AppColors.textPrimary),
              ),
              body: ListView(
                padding: const EdgeInsets.all(20),
                children: [
                  Text(
                    "Request Invite\n",
                    style: uiHelpers.heading,
                  ),
                  Text(
                    "By requesting your invite, you can reserve your seat here and we’ll get you on very soon.",
                    style: uiHelpers.subheading,
                  ),
                  uiHelpers.verticalSpaceLow!,
                  InputField(
                      title: "Your email here..",
                      keyboardType: TextInputType.emailAddress,
                      controller: emailController)
                ],
              ),
              floatingActionButton: FloatingActionButton(
                child: model.isBusy
                    ? CircularProgressIndicator(
                        color: AppColors.onPrimary,
                      )
                    : Icon(Icons.done),
                onPressed: model.isBusy ? () {} : () => model.requestInvite(),
              ),
            ));
  }
}
