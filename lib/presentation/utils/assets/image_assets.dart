final _basePath = 'assets/images/';
final _debugPath = _basePath + 'debug/';
final _releasePath = _basePath;

class ImageAssets {
  ImageAssets._();
  static final Debug = _Debug();
  static final Release = _Release();
}

class _Debug {
  final String google_logo = _debugPath + 'google.png';
}

class _Release {
  // Illustrations
  final String yoga_female = _releasePath + 'yoga_female.png';
  final String boy_block_game = _releasePath + 'boy_block_game.png';
  final String girl_read = _releasePath + 'girl_read.png';
  final String permission_lock = _releasePath + 'permission_lock.png';

  final String topicImageHealth = _releasePath + 'topic_health.png';
  final String topicImageIntellectual = _releasePath + 'topic_intellectual.png';
  final String topicImageCareer = _releasePath + 'topic_career.png';
  final String topicImageEmotional = _releasePath + 'topic_emotional.png';
  final String topicImageSocial = _releasePath + 'topic_social.png';
  final String topicImageProductivity = _releasePath + 'topic_productivity.png';

  final String onboard_expert = _releasePath + 'onboard_expert.png';
  final String onboard_learn = _releasePath + 'onboard_learn.png';
  final String onboard_friends = _releasePath + 'onboard_friends.png';

  // Logos
  final String google_logo = _releasePath + 'google-logo.png';
  final String cato_logo = _releasePath + 'cato_logo.png';

  // Backgrounds
  final String abstract_bg = _releasePath + 'abstract_bg.png';
  final String icon_playground_abstract = _releasePath + 'playground_abstract.png';

  // Icons
  final String icon_timing = _releasePath + 'icon_timing.png';
  final String icon_select_apps = _releasePath + 'icon_select_apps.png';
  final String icon_logout = _releasePath + 'icon_logout.png';
  final String icon_settings = _releasePath + 'icon_settings.png';
  final String icon_no_distractions = _releasePath + 'icon_no_distractions.png';
  final String icon_deactivate = _releasePath + 'icon_deactivate.png';

  final String icon_career = _releasePath + 'icon_career.png';
  final String icon_self_dev = _releasePath + 'icon_self_dev.png';
  final String icon_mind = _releasePath + 'icon_mind.png';
  final String icon_fun = _releasePath + 'icon_fun.png';
  final String icon_health = _releasePath + 'icon_health.png';
  final String icon_relationships = _releasePath + 'icon_relationships.png';
  final String icon_startups = _releasePath + 'icon_startups.png';
  final String icon_fundamentals = _releasePath + 'icon_fundamentals.png';
  final String icon_profile = _releasePath + 'icon_profile.png';
  final String icon_profile_cog = _releasePath + 'icon_profile_cog.png';
  final String icon_square_star = _releasePath + 'square_star.png';
  final String icon_friend_avatar = _releasePath + 'icon_friend_avatar.png';
  final String icon_star_envelope = _releasePath + 'icon_star_envelope.png';

}
