import 'package:feed/ui/global/screen.dart';
import 'package:feed/ui/global/styles.dart';
import 'package:flutter/material.dart';
import 'package:feed/core/models/app_models.dart';
import 'widgets/item.dart';
import 'topic_selection_viewmodel.dart';

class TopicSelectionView extends StatelessWidget {
  /// Indicates whether this view is used to select new topics or to update existing topics
  final bool updateTopicSelection;

  const TopicSelectionView({Key? key, this.updateTopicSelection = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenBuilder<TopicSelectionViewModel>(
        viewModel: TopicSelectionViewModel(),
        onModelReady: (model) {
          model.getTopics(isUpdate: updateTopicSelection);
        },
        builder: (context, uiHelpers, model) => Scaffold(
              appBar: AppBar(
                automaticallyImplyLeading: updateTopicSelection,
                elevation: 0,
                backgroundColor: Colors.transparent,
                actions: [
                  if(!model.isBusy)
                  TextButton(
                      onPressed: () => model.onSkip(isUpdate: updateTopicSelection),
                      child: Text(
                        "Skip",
                        style: uiHelpers.button,
                      ))
                ],
              ),
              body: model.isBusy
                  ? const Center(child: CircularProgressIndicator())
                  : ListView(
                      padding: const EdgeInsets.all(15.0),
                      children: [
                        Text.rich(TextSpan(children: [
                          TextSpan(
                              text: "Choose your Topics\n",
                              style: uiHelpers.heading),
                          TextSpan(
                              text:
                                  "\nJust before you continue, please choose the topics to get personalized recommendations",
                              style: uiHelpers.subheading!
                                  .copyWith(fontWeight: FontWeight.normal)),
                        ])),
                        uiHelpers.verticalSpaceMedium!,
                        Wrap(
                          alignment: WrapAlignment.spaceBetween,
                          children: model.topicCheckList.map((e) {
                            int index = model.topicCheckList.indexOf(e);
                            return TopicSelectionListItem(
                              image: e.getAssetImage(),
                              topicName: e.name,
                              isSelected:
                                  model.topicCheckList[index].isSelected!,
                              onSelected: () => model.selectTopic(index),
                            );
                          }).toList(),
                        )
                      ],
                    ),
              bottomNavigationBar: AnimatedContainer(
                height: 90,
                duration: const Duration(milliseconds: 200),
                child: Container(
                  color: Colors.transparent,
                  padding: const EdgeInsets.all(20.0),
                  child: !model.hasTopics || model.isBusy
                      ? null
                      : ElevatedButton(
                          style: raisedButtonStyle.copyWith(
                              textStyle: MaterialStateProperty.all<TextStyle>(
                                  uiHelpers.button!)),
                          onPressed: model.isBusy
                              ? () {}
                              : () => model.storeSelectedTopics(
                                  isUpdate: updateTopicSelection),
                          child: const Text("Continue"),
                        ),
                ),
              ),
            ));
  }
}
