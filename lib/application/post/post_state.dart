part of 'post_bloc.dart';

@freezed
abstract class PostPageState with _$PostPageState {
  const factory PostPageState(List<Post> posts, int skip, int limit, String topicId) = _PostPageState;
}

@freezed
abstract class PostState with _$PostState {
  const factory PostState(PostPageState allFeed, PostPageState feedByTopic, Failure failure) = _PostState;
  factory PostState.initial(int limit) => PostState(PostPageState(null, 0, limit, null), PostPageState(null, 0, limit, null), null);
}
