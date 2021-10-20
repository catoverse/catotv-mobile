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
        builder: (context, uiHelpers, model) => WillPopScope(
              onWillPop: () async {
                if (updateTopicSelection) {
                  model.gotoHome(isUpdate: true);
                }
                return true;
              },
              child: Scaffold(
                appBar: AppBar(
                  automaticallyImplyLeading: false,
                  leading: updateTopicSelection
                      ? BackButton(
                          onPressed: () => model.gotoHome(isUpdate: true),
                          color: Colors.black)
                      : null,
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  actions: [
                    if (!model.isBusy && !updateTopicSelection)
                      TextButton(
                          onPressed: () =>
                              model.onSkip(isUpdate: updateTopicSelection),
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
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                    text: updateTopicSelection
                                        ? 'Update Selected Topics\n\n'
                                        : "Choose your Topics\n\n",
                                    style: uiHelpers.heading),
                                if (!updateTopicSelection)
                                  TextSpan(
                                    text: "Just before you continue, ",
                                    style: uiHelpers.subheading!.copyWith(
                                        fontWeight: FontWeight.normal),
                                  ),
                                TextSpan(
                                  text: (updateTopicSelection
                                          ? 'update your selected'
                                          : "please choose the") +
                                      " topics to get personalized recommendations",
                                  style: uiHelpers.subheading!
                                      .copyWith(fontWeight: FontWeight.normal),
                                ),
                              ],
                            ),
                          ),
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
                bottomNavigationBar: AnimatedScale(
                  duration: const Duration(milliseconds: 200),
                  scale: !model.hasTopics || model.isBusy ? 0 : 1,
                  child: Container(
                    // height: 90,
                    color: Colors.transparent,
                    padding: const EdgeInsets.all(20.0),
                    child: ElevatedButton(
                      style: raisedButtonStyle.copyWith(
                        textStyle: MaterialStateProperty.all<TextStyle>(
                          uiHelpers.button!,
                        ),
                      ),
                      onPressed: model.isBusy
                          ? () {}
                          : () => model.storeSelectedTopics(
                              isUpdate: updateTopicSelection),
                      child: Text(updateTopicSelection ? 'Update' : 'Continue'),
                    ),
                  ),
                ),
              ),
            ));
  }
}
