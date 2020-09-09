class LogEvents {
  LogEvents._();

  static const EVENT_UPDATE_APP_CLICKED = "update_app_clicked";

  static const EVENT_POST_LIKED = "post_liked";
  static const EVENT_POST_UNLIKED = "post_unliked";
  static const EVENT_POST_SAVED = "post_saved";
  static const EVENT_POST_UNSAVED = "post_unsaved";
  static const EVENT_POST_SHARE = "post_share";

  // Login Button
  static const EVENT_LOGIN_PRESSED = "login_pressed";
  static const EVENT_LOGOUT_PRESSED = "logout_pressed";
  static const EVENT_LOGOUT_DIALOG_CANCEL = "logout_dialog_cancel";
  static const EVENT_LOGOUT_DIALOG_OK = "logout_dialog_ok";

  // TOPICS
  static const EVENT_PROFILE_PICK_TOPIC = "profile_pick_topic_clicked";
  static const EVENT_TOPIC_PICK_DONE = "topic_pick_done";
  static const EVENT_TOPIC_PICK_CANCEL = "topic_pick_cancel";

  static const EVENT_LIST_FILTER_SELECTED = "list_filter_selected";

  // Video
  static const EVENT_VIDEO_PLAY_PRESSED = "video_play_pressed";
  static const EVENT_VIDEO_WATCHED_FINISHED = "video_watched_finished";
  static const EVENT_VIDEO_WATCHED_TIMESTAMP = "video_watched_timestamp";

  static Map<String, dynamic> getVideoPlayerParams(String postId, {int playbackTimeStamp = -1}) {
      Map<String, dynamic> returnMap = {};
      if(playbackTimeStamp != null && playbackTimeStamp != -1) {
        returnMap['playback_timestamp'] = playbackTimeStamp;
      }
      return returnMap;
  }

  static Map<String, dynamic> getListFilterSelectedVariables(String topicId) {
    return {
      "filtered_on": topicId
    };
  }

  static Map<String, dynamic> getTopicPickDoneVariables(List<String> topicIds) {
    Map<String, dynamic> mapToReturn = {};
    for(var i=0; i<topicIds.length; i++) {
      mapToReturn['selected_topic_id_$i'] = topicIds[i];
    }
    return mapToReturn;
  }

  static Map<String, dynamic> getPostVariables(String postId) {
    return {
      "postId": postId
    };
  }
}
