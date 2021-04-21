// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'topic.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TopicTearOff {
  const _$TopicTearOff();

// ignore: unused_element
  _Topic call(
      {@required String id,
      @required String name,
      @required String color,
      @required String image}) {
    return _Topic(
      id: id,
      name: name,
      color: color,
      image: image,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Topic = _$TopicTearOff();

/// @nodoc
mixin _$Topic {
  String get id;
  String get name;
  String get color;
  String get image;

  @JsonKey(ignore: true)
  $TopicCopyWith<Topic> get copyWith;
}

/// @nodoc
abstract class $TopicCopyWith<$Res> {
  factory $TopicCopyWith(Topic value, $Res Function(Topic) then) =
      _$TopicCopyWithImpl<$Res>;
  $Res call({String id, String name, String color, String image});
}

/// @nodoc
class _$TopicCopyWithImpl<$Res> implements $TopicCopyWith<$Res> {
  _$TopicCopyWithImpl(this._value, this._then);

  final Topic _value;
  // ignore: unused_field
  final $Res Function(Topic) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object color = freezed,
    Object image = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      color: color == freezed ? _value.color : color as String,
      image: image == freezed ? _value.image : image as String,
    ));
  }
}

/// @nodoc
abstract class _$TopicCopyWith<$Res> implements $TopicCopyWith<$Res> {
  factory _$TopicCopyWith(_Topic value, $Res Function(_Topic) then) =
      __$TopicCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, String color, String image});
}

/// @nodoc
class __$TopicCopyWithImpl<$Res> extends _$TopicCopyWithImpl<$Res>
    implements _$TopicCopyWith<$Res> {
  __$TopicCopyWithImpl(_Topic _value, $Res Function(_Topic) _then)
      : super(_value, (v) => _then(v as _Topic));

  @override
  _Topic get _value => super._value as _Topic;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object color = freezed,
    Object image = freezed,
  }) {
    return _then(_Topic(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      color: color == freezed ? _value.color : color as String,
      image: image == freezed ? _value.image : image as String,
    ));
  }
}

/// @nodoc
class _$_Topic extends _Topic with DiagnosticableTreeMixin {
  const _$_Topic(
      {@required this.id,
      @required this.name,
      @required this.color,
      @required this.image})
      : assert(id != null),
        assert(name != null),
        assert(color != null),
        assert(image != null),
        super._();

  @override
  final String id;
  @override
  final String name;
  @override
  final String color;
  @override
  final String image;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Topic(id: $id, name: $name, color: $color, image: $image)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Topic'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('color', color))
      ..add(DiagnosticsProperty('image', image));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Topic &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.color, color) ||
                const DeepCollectionEquality().equals(other.color, color)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(color) ^
      const DeepCollectionEquality().hash(image);

  @JsonKey(ignore: true)
  @override
  _$TopicCopyWith<_Topic> get copyWith =>
      __$TopicCopyWithImpl<_Topic>(this, _$identity);
}

abstract class _Topic extends Topic {
  const _Topic._() : super._();
  const factory _Topic(
      {@required String id,
      @required String name,
      @required String color,
      @required String image}) = _$_Topic;

  @override
  String get id;
  @override
  String get name;
  @override
  String get color;
  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  _$TopicCopyWith<_Topic> get copyWith;
}
