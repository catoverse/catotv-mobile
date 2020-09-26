// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'installed_apps_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$InstalledAppsEventTearOff {
  const _$InstalledAppsEventTearOff();

// ignore: unused_element
  _Initialize initialize() {
    return const _Initialize();
  }
}

// ignore: unused_element
const $InstalledAppsEvent = _$InstalledAppsEventTearOff();

mixin _$InstalledAppsEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialize(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialize(_Initialize value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(_Initialize value),
    @required Result orElse(),
  });
}

abstract class $InstalledAppsEventCopyWith<$Res> {
  factory $InstalledAppsEventCopyWith(
          InstalledAppsEvent value, $Res Function(InstalledAppsEvent) then) =
      _$InstalledAppsEventCopyWithImpl<$Res>;
}

class _$InstalledAppsEventCopyWithImpl<$Res>
    implements $InstalledAppsEventCopyWith<$Res> {
  _$InstalledAppsEventCopyWithImpl(this._value, this._then);

  final InstalledAppsEvent _value;
  // ignore: unused_field
  final $Res Function(InstalledAppsEvent) _then;
}

abstract class _$InitializeCopyWith<$Res> {
  factory _$InitializeCopyWith(
          _Initialize value, $Res Function(_Initialize) then) =
      __$InitializeCopyWithImpl<$Res>;
}

class __$InitializeCopyWithImpl<$Res>
    extends _$InstalledAppsEventCopyWithImpl<$Res>
    implements _$InitializeCopyWith<$Res> {
  __$InitializeCopyWithImpl(
      _Initialize _value, $Res Function(_Initialize) _then)
      : super(_value, (v) => _then(v as _Initialize));

  @override
  _Initialize get _value => super._value as _Initialize;
}

class _$_Initialize implements _Initialize {
  const _$_Initialize();

  @override
  String toString() {
    return 'InstalledAppsEvent.initialize()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initialize);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialize(),
  }) {
    assert(initialize != null);
    return initialize();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialize != null) {
      return initialize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialize(_Initialize value),
  }) {
    assert(initialize != null);
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(_Initialize value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class _Initialize implements InstalledAppsEvent {
  const factory _Initialize() = _$_Initialize;
}

class _$InstalledAppsStateTearOff {
  const _$InstalledAppsStateTearOff();

// ignore: unused_element
  _InstalledAppsState call({KtList<Application> installedApps}) {
    return _InstalledAppsState(
      installedApps: installedApps,
    );
  }
}

// ignore: unused_element
const $InstalledAppsState = _$InstalledAppsStateTearOff();

mixin _$InstalledAppsState {
  KtList<Application> get installedApps;

  $InstalledAppsStateCopyWith<InstalledAppsState> get copyWith;
}

abstract class $InstalledAppsStateCopyWith<$Res> {
  factory $InstalledAppsStateCopyWith(
          InstalledAppsState value, $Res Function(InstalledAppsState) then) =
      _$InstalledAppsStateCopyWithImpl<$Res>;
  $Res call({KtList<Application> installedApps});
}

class _$InstalledAppsStateCopyWithImpl<$Res>
    implements $InstalledAppsStateCopyWith<$Res> {
  _$InstalledAppsStateCopyWithImpl(this._value, this._then);

  final InstalledAppsState _value;
  // ignore: unused_field
  final $Res Function(InstalledAppsState) _then;

  @override
  $Res call({
    Object installedApps = freezed,
  }) {
    return _then(_value.copyWith(
      installedApps: installedApps == freezed
          ? _value.installedApps
          : installedApps as KtList<Application>,
    ));
  }
}

abstract class _$InstalledAppsStateCopyWith<$Res>
    implements $InstalledAppsStateCopyWith<$Res> {
  factory _$InstalledAppsStateCopyWith(
          _InstalledAppsState value, $Res Function(_InstalledAppsState) then) =
      __$InstalledAppsStateCopyWithImpl<$Res>;
  @override
  $Res call({KtList<Application> installedApps});
}

class __$InstalledAppsStateCopyWithImpl<$Res>
    extends _$InstalledAppsStateCopyWithImpl<$Res>
    implements _$InstalledAppsStateCopyWith<$Res> {
  __$InstalledAppsStateCopyWithImpl(
      _InstalledAppsState _value, $Res Function(_InstalledAppsState) _then)
      : super(_value, (v) => _then(v as _InstalledAppsState));

  @override
  _InstalledAppsState get _value => super._value as _InstalledAppsState;

  @override
  $Res call({
    Object installedApps = freezed,
  }) {
    return _then(_InstalledAppsState(
      installedApps: installedApps == freezed
          ? _value.installedApps
          : installedApps as KtList<Application>,
    ));
  }
}

class _$_InstalledAppsState implements _InstalledAppsState {
  const _$_InstalledAppsState({this.installedApps});

  @override
  final KtList<Application> installedApps;

  @override
  String toString() {
    return 'InstalledAppsState(installedApps: $installedApps)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InstalledAppsState &&
            (identical(other.installedApps, installedApps) ||
                const DeepCollectionEquality()
                    .equals(other.installedApps, installedApps)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(installedApps);

  @override
  _$InstalledAppsStateCopyWith<_InstalledAppsState> get copyWith =>
      __$InstalledAppsStateCopyWithImpl<_InstalledAppsState>(this, _$identity);
}

abstract class _InstalledAppsState implements InstalledAppsState {
  const factory _InstalledAppsState({KtList<Application> installedApps}) =
      _$_InstalledAppsState;

  @override
  KtList<Application> get installedApps;
  @override
  _$InstalledAppsStateCopyWith<_InstalledAppsState> get copyWith;
}
