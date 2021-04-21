import 'package:cato_feed/presentation/utils/assets/color_assets.dart';
import 'package:cato_feed/presentation/utils/assets/image_assets.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'topic.freezed.dart';

@freezed
abstract class Topic with _$Topic {
  const Topic._();

  const factory Topic({
    @required String id,
    @required String name,
    @required String color,
    @required String image,
  }) = _Topic;

  String getImage() {
    switch (name) {
      case "Career":
        {
          return ImageAssets.Release.topicImageCareer;
        }
      case "Social":
        {
          return ImageAssets.Release.topicImageSocial;
        }
      case "Health & Nutrition":
        {
          return ImageAssets.Release.topicImageHealth;
        }
      case "Intellectual":
        {
          return ImageAssets.Release.topicImageIntellectual;
        }
      case "Emotional":
        {
          return ImageAssets.Release.topicImageEmotional;
        }
      default:
        {
          return ImageAssets.Release.topicImageProductivity;
        }
    }
  }

  Color getColor() {
    switch (name) {
      case "Career":
        {
          return ColorAssets.topicColorCareer;
        }
      case "Social":
        {
          return ColorAssets.topicColorSocial;
        }
      case "Health & Nutrition":
        {
          return ColorAssets.topicColorHealth;
        }
      case "Intellectual":
        {
          return ColorAssets.topicColorIntellectual;
        }
      case "Emotional":
        {
          return ColorAssets.topicColorEmotional;
        }
      default:
        {
          return ColorAssets.topicColorProductivity;
        }
    }
  }
}
