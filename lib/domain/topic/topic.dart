import 'package:cato_feed/presentation/utils/assets/color_assets.dart';
import 'package:cato_feed/presentation/utils/assets/image_assets.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'topic.freezed.dart';

@freezed
abstract class Topic implements _$Topic {
  const Topic._();
  const factory Topic(
      {@required String id,
      @required String name,
      @required String color,
      @required String image}) = _Topic;

  String getImage() {
    switch(name) {
      case "Career":  {
        return ImageAssets.Release.topicImageHealth;
      }
      case "Social": {
        return ImageAssets.Release.topicImageIntellectual;
      }
      case "Health & Nutrition": {
        return ImageAssets.Release.topicImageCareer;
      }
      case "Intellectual": {
        return ImageAssets.Release.topicImageEmotional;
      }
      case "Emotional": {
        return ImageAssets.Release.topicImageEmotional;
      }
      default: {
        return ImageAssets.Release.topicImageProductivity;
      }
    }
  }

  Color getColor() {
    switch(name) {
      case "Career":  {
        return ColorAssets.topicColorCareer;
      }
      case "Social": {
        return ColorAssets.topicColorSocial;
      }
      case "Health & Nutrition": {
        return ColorAssets.topicColorHealth;
      }
      case "Intellectual": {
        return ColorAssets.topicColorIntellectual;
      }
      case "Emotional": {
        return ColorAssets.topicColorEmotional;
      }
      default: {
        return ColorAssets.topicColorProductivity;
      }
    }
  }
}
