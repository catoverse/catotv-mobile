class LogEvents {
  LogEvents._();

  static const POST_LIKED = "post_liked";
  static const POST_UNLIKED = "post_unliked";
  static const POST_SAVED = "post_saved";
  static const POST_UNSAVED = "post_unsaved";
  static const POST_SHARE = "post_share";

  static Map<String, dynamic> getPostVariables(String postId) {
    return {
      "postId": postId
    };
  }
}
