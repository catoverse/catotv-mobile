import 'package:feed/ui/global/screen.dart';
import 'package:flutter/material.dart';

import 'restricted_home_viewmodel.dart';

class RestrictedHomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenBuilder<RestrictedHomeViewModel>(
        viewModel: RestrictedHomeViewModel(),
        onModelReady: (model) => model.initPlayer(),
        builder: (context, uiHelpers, model) => WillPopScope(
              onWillPop: model.showExitSnackbar,
              child: Scaffold(
                appBar: AppBar(
                  automaticallyImplyLeading: false,
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  actions: [
                    Container(
                      margin: EdgeInsets.only(right: 20.0),
                      child: GestureDetector(
                        onTap: () => model.showConstraint(),
                        child: CircleAvatar(
                          child: Text("O"),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ));
  }
}
