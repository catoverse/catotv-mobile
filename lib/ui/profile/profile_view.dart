import 'package:feed/ui/global/screen.dart';
import 'package:flutter/material.dart';

import 'profile_viewmodel.dart';

class ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenBuilder<ProfileViewModel>(
        viewModel: ProfileViewModel(),
        builder: (context, uiHelpers, model) => Scaffold(
              appBar: AppBar(
                automaticallyImplyLeading: false,
                elevation: 0,
                backgroundColor: Colors.transparent,
                title: Text("Name"),
              ),
              body: Container(
                child: Text("Watch time: ${model.length()}"),
              ),
            ));
  }
}
