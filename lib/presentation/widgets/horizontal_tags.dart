import 'package:cato_feed/domain/topic/topic.dart';
import 'package:cato_feed/presentation/utils/assets/color_assets.dart';
import 'package:flutter/material.dart';

typedef TopicTapCallback = Function(String);
class HorizontalTags extends StatelessWidget {
  final List<Topic> _topics;
  String _checkedTopicId;
  final TopicTapCallback onTap;

  HorizontalTags(this._topics, this._checkedTopicId, {this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.symmetric(horizontal: 16),
      scrollDirection: Axis.horizontal,
      itemBuilder: (_, index) {
        var name = (index == 0) ? 'All' : _topics[index - 1].name;
        var color =
            (index == 0) ? ColorAssets.teal : _topics[index - 1].getColor();
        var isChecked = (index == 0)
            ? _checkedTopicId == null
            : _topics[index - 1].id == _checkedTopicId;
        return GestureDetector(
          child: CategoryTag(
            tagColor: color,
            tagName: name,
            isChecked: isChecked,
          ),
          onTap: () {
            onTap((index == 0) ? null : _topics[index - 1].id);
          },
        );
      },
      separatorBuilder: (_, __) => SizedBox(
        width: 10,
      ),
      itemCount: _topics.length + 1,
    );
  }
}

class CategoryTag extends StatelessWidget {
  final Color tagColor;
  final String tagName;
  final bool isChecked;

  const CategoryTag({this.tagColor, this.tagName, this.isChecked = false});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            color: tagColor,
          ),
          child: Center(
            child: Row(
              children: [
                Text(
                  tagName,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                SizedBox(
                  width: (isChecked) ? 5 : 0,
                ),
                (isChecked)
                    ? Icon(
                        Icons.check_circle_rounded,
                        color: Colors.white,
                        size: 16,
                      )
                    : SizedBox(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
