import 'package:freezed_annotation/freezed_annotation.dart';
part 'user.freezed.dart';

@freezed
abstract class User with _$User {
  const factory User({
    @required String id,
    @required String googleId,
    @required String name,
    @required String email,
    @required String photoUrl,
    @required bool interestSelected,
    @required String jwtToken,
    @required DateTime createdAt,
    @required DateTime updatedAt,
    @required DateTime jwtIssueDate,
  }) = _User;
}
