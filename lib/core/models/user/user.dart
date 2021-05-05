import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  User._();

  @HiveType(typeId: 0)
  factory User({
    @HiveField(0) required String id,
    @HiveField(1) required String name,
    @HiveField(2) required String email,
    @HiveField(3) required String avatar,
    @HiveField(4) required String token,

    ///TODO: Change GQL Query to fetch [invites]
    @JsonKey(ignore: true) @HiveField(5) int? invites,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
