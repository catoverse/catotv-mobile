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
          return ImageAssets.Release.icon_career;
        }
      case "Social":
        {
          return ImageAssets.Release.icon_relationships;
        }
      case "Health & Nutrition":
        {
          return ImageAssets.Release.icon_health;
        }
      case "Intellectual":
        {
          return ImageAssets.Release.icon_fundamentals;
        }
      case "Emotional":
        {
          return ImageAssets.Release.icon_mind;
        }
      default:
        {
          return ImageAssets.Release.icon_startups;
        }
    }
  }

  String getDiscription() {
    switch (name) {
      case "Career":
        {
          return "Storytelling, Creating Wealth, Empathy & More";
        }
      case "Social":
        {
          return "Conflicts, Family, Friends, Love & More";
        }
      case "Health & Nutrition":
        {
          return "Biohacking, Nutrition, Fitness & More";
        }
      case "Intellectual":
        {
          return "First Principles of Knowledge & More";
        }
      case "Emotional":
        {
          return "Mental Health, Critical Thinking & More.";
        }
      default:
        {
          return "Productivity, Digital Hygiene & More";
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
