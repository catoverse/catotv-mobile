import 'package:feed/ui/global/screen.dart';
import 'package:flutter/material.dart';

import 'update_viewmodel.dart';

class UpdateView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenBuilder<UpdateViewModel>(
        viewModel: UpdateViewModel(),
        builder: (context, uiHelpers, model) => Scaffold(
              appBar: AppBar(),
              body: const Text("Update"),
            ));
  }
}
