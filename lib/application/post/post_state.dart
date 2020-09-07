part of 'post_bloc.dart';

@freezed
abstract class PostPageState with _$PostPageState {
  const factory PostPageState(int skip, int limit, {List<Post> posts, String topicId}) = _PostPageState;
}

@freezed
abstract class PostState with _$PostState {
  const factory PostState(PostPageState allFeed, PostPageState feedByTopic, {Failure failure}) = _PostState;
  factory PostState.initial(int limit) => PostState(PostPageState(0, limit), PostPageState(0, limit), failure: null);
}
