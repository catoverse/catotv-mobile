// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$UserTearOff {
  const _$UserTearOff();

// ignore: unused_element
  _User call(
      {@required String id,
      @required String googleId,
      @required String name,
      @required String email,
      @required String photoUrl,
      @required bool interestSelected,
      @required String jwtToken,
      @required DateTime createdAt,
      @required DateTime updatedAt,
      @required DateTime jwtIssueDate}) {
    return _User(
      id: id,
      googleId: googleId,
      name: name,
      email: email,
      photoUrl: photoUrl,
      interestSelected: interestSelected,
      jwtToken: jwtToken,
      createdAt: createdAt,
      updatedAt: updatedAt,
      jwtIssueDate: jwtIssueDate,
    );
  }
}

// ignore: unused_element
const $User = _$UserTearOff();

mixin _$User {
  String get id;
  String get googleId;
  String get name;
  String get email;
  String get photoUrl;
  bool get interestSelected;
  String get jwtToken;
  DateTime get createdAt;
  DateTime get updatedAt;
  DateTime get jwtIssueDate;

  $UserCopyWith<User> get copyWith;
}

abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String googleId,
      String name,
      String email,
      String photoUrl,
      bool interestSelected,
      String jwtToken,
      DateTime createdAt,
      DateTime updatedAt,
      DateTime jwtIssueDate});
}

class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object id = freezed,
    Object googleId = freezed,
    Object name = freezed,
    Object email = freezed,
    Object photoUrl = freezed,
    Object interestSelected = freezed,
    Object jwtToken = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
    Object jwtIssueDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      googleId: googleId == freezed ? _value.googleId : googleId as String,
      name: name == freezed ? _value.name : name as String,
      email: email == freezed ? _value.email : email as String,
      photoUrl: photoUrl == freezed ? _value.photoUrl : photoUrl as String,
      interestSelected: interestSelected == freezed
          ? _value.interestSelected
          : interestSelected as bool,
      jwtToken: jwtToken == freezed ? _value.jwtToken : jwtToken as String,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
      updatedAt:
          updatedAt == freezed ? _value.updatedAt : updatedAt as DateTime,
      jwtIssueDate: jwtIssueDate == freezed
          ? _value.jwtIssueDate
          : jwtIssueDate as DateTime,
    ));
  }
}

abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String googleId,
      String name,
      String email,
      String photoUrl,
      bool interestSelected,
      String jwtToken,
      DateTime createdAt,
      DateTime updatedAt,
      DateTime jwtIssueDate});
}

class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object id = freezed,
    Object googleId = freezed,
    Object name = freezed,
    Object email = freezed,
    Object photoUrl = freezed,
    Object interestSelected = freezed,
    Object jwtToken = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
    Object jwtIssueDate = freezed,
  }) {
    return _then(_User(
      id: id == freezed ? _value.id : id as String,
      googleId: googleId == freezed ? _value.googleId : googleId as String,
      name: name == freezed ? _value.name : name as String,
      email: email == freezed ? _value.email : email as String,
      photoUrl: photoUrl == freezed ? _value.photoUrl : photoUrl as String,
      interestSelected: interestSelected == freezed
          ? _value.interestSelected
          : interestSelected as bool,
      jwtToken: jwtToken == freezed ? _value.jwtToken : jwtToken as String,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
      updatedAt:
          updatedAt == freezed ? _value.updatedAt : updatedAt as DateTime,
      jwtIssueDate: jwtIssueDate == freezed
          ? _value.jwtIssueDate
          : jwtIssueDate as DateTime,
    ));
  }
}

class _$_User implements _User {
  const _$_User(
      {@required this.id,
      @required this.googleId,
      @required this.name,
      @required this.email,
      @required this.photoUrl,
      @required this.interestSelected,
      @required this.jwtToken,
      @required this.createdAt,
      @required this.updatedAt,
      @required this.jwtIssueDate})
      : assert(id != null),
        assert(googleId != null),
        assert(name != null),
        assert(email != null),
        assert(photoUrl != null),
        assert(interestSelected != null),
        assert(jwtToken != null),
        assert(createdAt != null),
        assert(updatedAt != null),
        assert(jwtIssueDate != null);

  @override
  final String id;
  @override
  final String googleId;
  @override
  final String name;
  @override
  final String email;
  @override
  final String photoUrl;
  @override
  final bool interestSelected;
  @override
  final String jwtToken;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final DateTime jwtIssueDate;

  @override
  String toString() {
    return 'User(id: $id, googleId: $googleId, name: $name, email: $email, photoUrl: $photoUrl, interestSelected: $interestSelected, jwtToken: $jwtToken, createdAt: $createdAt, updatedAt: $updatedAt, jwtIssueDate: $jwtIssueDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.googleId, googleId) ||
                const DeepCollectionEquality()
                    .equals(other.googleId, googleId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.photoUrl, photoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.photoUrl, photoUrl)) &&
            (identical(other.interestSelected, interestSelected) ||
                const DeepCollectionEquality()
                    .equals(other.interestSelected, interestSelected)) &&
            (identical(other.jwtToken, jwtToken) ||
                const DeepCollectionEquality()
                    .equals(other.jwtToken, jwtToken)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.jwtIssueDate, jwtIssueDate) ||
                const DeepCollectionEquality()
                    .equals(other.jwtIssueDate, jwtIssueDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(googleId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(photoUrl) ^
      const DeepCollectionEquality().hash(interestSelected) ^
      const DeepCollectionEquality().hash(jwtToken) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(jwtIssueDate);

  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);
}

abstract class _User implements User {
  const factory _User(
      {@required String id,
      @required String googleId,
      @required String name,
      @required String email,
      @required String photoUrl,
      @required bool interestSelected,
      @required String jwtToken,
      @required DateTime createdAt,
      @required DateTime updatedAt,
      @required DateTime jwtIssueDate}) = _$_User;

  @override
  String get id;
  @override
  String get googleId;
  @override
  String get name;
  @override
  String get email;
  @override
  String get photoUrl;
  @override
  bool get interestSelected;
  @override
  String get jwtToken;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  DateTime get jwtIssueDate;
  @override
  _$UserCopyWith<_User> get copyWith;
}
