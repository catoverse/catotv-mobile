import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  User._();

  factory User({
    required String id,
    required String name,
    required String email,
    required String avatar,
    required String token,

    ///TODO: Change GQL Query to fetch [invites]
    @JsonKey(ignore: true) int? invites,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
