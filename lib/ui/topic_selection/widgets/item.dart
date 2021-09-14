import 'package:feed/ui/global/theme.dart';
import 'package:flutter/material.dart';

class TopicSelectionListItem extends StatelessWidget {
  final String image, topicName;
  final bool isSelected;
  final Function onSelected;

  const TopicSelectionListItem(
      {Key? key,
      required this.image,
      required this.topicName,
      required this.onSelected,
      required this.isSelected})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20.0),
      width: MediaQuery.of(context).size.width / 2 - 25,
      child: Material(
        type: MaterialType.card,
        color: isSelected ? AppColors.primary : AppColors.surface,
        borderRadius: const BorderRadius.all(Radius.circular(8.0)),
        elevation: 2,
        child: InkWell(
          onTap: () => onSelected(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      image,
                      width: 50,
                      height: 50,
                    ),
                    if (isSelected)
                      Container(
                        padding: const EdgeInsets.all(2.0),
                        decoration: BoxDecoration(
                            color: Colors.indigo.shade100,
                            borderRadius: BorderRadius.circular(20.0)),
                        child: const Icon(
                          Icons.done,
                          size: 20.0,
                          color: AppColors.primary,
                        ),
                      )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  topicName,
                  style: TextStyle(
                      color: isSelected
                          ? AppColors.onPrimary
                          : AppColors.textPrimary,
                      fontSize: 16),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
