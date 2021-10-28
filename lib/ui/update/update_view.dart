import 'package:feed/core/constants/assets.dart';
import 'package:feed/ui/global/screen.dart';
import 'package:feed/ui/global/styles.dart';
import 'package:flutter/material.dart';

import 'update_viewmodel.dart';

class UpdateView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenBuilder<UpdateViewModel>(
        viewModel: UpdateViewModel(),
        builder: (context, uiHelpers, model) => Scaffold(
              body: Center(
                child: ListView(
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(16.0),
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: Image.asset(Assets.appIcon),
                      title: Text(
                        "Cato.tv needs an update",
                        style: uiHelpers.subheading,
                      ),
                      subtitle: const Text(
                          "To continue using this app, please update to the latest version"),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 16.0),
                      child: ElevatedButton(
                        style: raisedButtonStyle.copyWith(
                            textStyle: MaterialStateProperty.all<TextStyle>(
                                uiHelpers.button!)),
                        onPressed: () => model.openPlayStore(),
                        child: const Text("Update"),
                      ),
                    ),
                  ],
                ),
              ),
            ));
  }
}
