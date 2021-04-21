// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'app_redirect_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AppRedirectEventTearOff {
  const _$AppRedirectEventTearOff();

// ignore: unused_element
  _Initialize initialize(int startStep) {
    return _Initialize(
      startStep,
    );
  }

// ignore: unused_element
  _ChangeStep changeStep(int currentStep) {
    return _ChangeStep(
      currentStep,
    );
  }

// ignore: unused_element
  _AddOrRemoveWeekDay addOrRemoveWeekDay(int weekDay) {
    return _AddOrRemoveWeekDay(
      weekDay,
    );
  }

// ignore: unused_element
  _UpdateTime updateTime(String startTime, String endTime) {
    return _UpdateTime(
      startTime,
      endTime,
    );
  }

// ignore: unused_element
  _CheckPermission checkPermissions() {
    return const _CheckPermission();
  }

// ignore: unused_element
  _RequestAppUsagePermission requestAppUsagePermission() {
    return const _RequestAppUsagePermission();
  }

// ignore: unused_element
  _RequestBatteryPermission requestBatteryPermission() {
    return const _RequestBatteryPermission();
  }

// ignore: unused_element
  _RequestOverlayPermission requestOverlayPermission() {
    return const _RequestOverlayPermission();
  }

// ignore: unused_element
  _StartAppRedirect startAppRedirect() {
    return const _StartAppRedirect();
  }
}

/// @nodoc
// ignore: unused_element
const $AppRedirectEvent = _$AppRedirectEventTearOff();

/// @nodoc
mixin _$AppRedirectEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialize(int startStep),
    @required TResult changeStep(int currentStep),
    @required TResult addOrRemoveWeekDay(int weekDay),
    @required TResult updateTime(String startTime, String endTime),
    @required TResult checkPermissions(),
    @required TResult requestAppUsagePermission(),
    @required TResult requestBatteryPermission(),
    @required TResult requestOverlayPermission(),
    @required TResult startAppRedirect(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialize(int startStep),
    TResult changeStep(int currentStep),
    TResult addOrRemoveWeekDay(int weekDay),
    TResult updateTime(String startTime, String endTime),
    TResult checkPermissions(),
    TResult requestAppUsagePermission(),
    TResult requestBatteryPermission(),
    TResult requestOverlayPermission(),
    TResult startAppRedirect(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialize(_Initialize value),
    @required TResult changeStep(_ChangeStep value),
    @required TResult addOrRemoveWeekDay(_AddOrRemoveWeekDay value),
    @required TResult updateTime(_UpdateTime value),
    @required TResult checkPermissions(_CheckPermission value),
    @required
        TResult requestAppUsagePermission(_RequestAppUsagePermission value),
    @required TResult requestBatteryPermission(_RequestBatteryPermission value),
    @required TResult requestOverlayPermission(_RequestOverlayPermission value),
    @required TResult startAppRedirect(_StartAppRedirect value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialize(_Initialize value),
    TResult changeStep(_ChangeStep value),
    TResult addOrRemoveWeekDay(_AddOrRemoveWeekDay value),
    TResult updateTime(_UpdateTime value),
    TResult checkPermissions(_CheckPermission value),
    TResult requestAppUsagePermission(_RequestAppUsagePermission value),
    TResult requestBatteryPermission(_RequestBatteryPermission value),
    TResult requestOverlayPermission(_RequestOverlayPermission value),
    TResult startAppRedirect(_StartAppRedirect value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $AppRedirectEventCopyWith<$Res> {
  factory $AppRedirectEventCopyWith(
          AppRedirectEvent value, $Res Function(AppRedirectEvent) then) =
      _$AppRedirectEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppRedirectEventCopyWithImpl<$Res>
    implements $AppRedirectEventCopyWith<$Res> {
  _$AppRedirectEventCopyWithImpl(this._value, this._then);

  final AppRedirectEvent _value;
  // ignore: unused_field
  final $Res Function(AppRedirectEvent) _then;
}

/// @nodoc
abstract class _$InitializeCopyWith<$Res> {
  factory _$InitializeCopyWith(
          _Initialize value, $Res Function(_Initialize) then) =
      __$InitializeCopyWithImpl<$Res>;
  $Res call({int startStep});
}

/// @nodoc
class __$InitializeCopyWithImpl<$Res>
    extends _$AppRedirectEventCopyWithImpl<$Res>
    implements _$InitializeCopyWith<$Res> {
  __$InitializeCopyWithImpl(
      _Initialize _value, $Res Function(_Initialize) _then)
      : super(_value, (v) => _then(v as _Initialize));

  @override
  _Initialize get _value => super._value as _Initialize;

  @override
  $Res call({
    Object startStep = freezed,
  }) {
    return _then(_Initialize(
      startStep == freezed ? _value.startStep : startStep as int,
    ));
  }
}

/// @nodoc
class _$_Initialize with DiagnosticableTreeMixin implements _Initialize {
  const _$_Initialize(this.startStep) : assert(startStep != null);

  @override
  final int startStep;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppRedirectEvent.initialize(startStep: $startStep)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppRedirectEvent.initialize'))
      ..add(DiagnosticsProperty('startStep', startStep));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialize &&
            (identical(other.startStep, startStep) ||
                const DeepCollectionEquality()
                    .equals(other.startStep, startStep)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(startStep);

  @JsonKey(ignore: true)
  @override
  _$InitializeCopyWith<_Initialize> get copyWith =>
      __$InitializeCopyWithImpl<_Initialize>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialize(int startStep),
    @required TResult changeStep(int currentStep),
    @required TResult addOrRemoveWeekDay(int weekDay),
    @required TResult updateTime(String startTime, String endTime),
    @required TResult checkPermissions(),
    @required TResult requestAppUsagePermission(),
    @required TResult requestBatteryPermission(),
    @required TResult requestOverlayPermission(),
    @required TResult startAppRedirect(),
  }) {
    assert(initialize != null);
    assert(changeStep != null);
    assert(addOrRemoveWeekDay != null);
    assert(updateTime != null);
    assert(checkPermissions != null);
    assert(requestAppUsagePermission != null);
    assert(requestBatteryPermission != null);
    assert(requestOverlayPermission != null);
    assert(startAppRedirect != null);
    return initialize(startStep);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialize(int startStep),
    TResult changeStep(int currentStep),
    TResult addOrRemoveWeekDay(int weekDay),
    TResult updateTime(String startTime, String endTime),
    TResult checkPermissions(),
    TResult requestAppUsagePermission(),
    TResult requestBatteryPermission(),
    TResult requestOverlayPermission(),
    TResult startAppRedirect(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialize != null) {
      return initialize(startStep);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialize(_Initialize value),
    @required TResult changeStep(_ChangeStep value),
    @required TResult addOrRemoveWeekDay(_AddOrRemoveWeekDay value),
    @required TResult updateTime(_UpdateTime value),
    @required TResult checkPermissions(_CheckPermission value),
    @required
        TResult requestAppUsagePermission(_RequestAppUsagePermission value),
    @required TResult requestBatteryPermission(_RequestBatteryPermission value),
    @required TResult requestOverlayPermission(_RequestOverlayPermission value),
    @required TResult startAppRedirect(_StartAppRedirect value),
  }) {
    assert(initialize != null);
    assert(changeStep != null);
    assert(addOrRemoveWeekDay != null);
    assert(updateTime != null);
    assert(checkPermissions != null);
    assert(requestAppUsagePermission != null);
    assert(requestBatteryPermission != null);
    assert(requestOverlayPermission != null);
    assert(startAppRedirect != null);
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialize(_Initialize value),
    TResult changeStep(_ChangeStep value),
    TResult addOrRemoveWeekDay(_AddOrRemoveWeekDay value),
    TResult updateTime(_UpdateTime value),
    TResult checkPermissions(_CheckPermission value),
    TResult requestAppUsagePermission(_RequestAppUsagePermission value),
    TResult requestBatteryPermission(_RequestBatteryPermission value),
    TResult requestOverlayPermission(_RequestOverlayPermission value),
    TResult startAppRedirect(_StartAppRedirect value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class _Initialize implements AppRedirectEvent {
  const factory _Initialize(int startStep) = _$_Initialize;

  int get startStep;
  @JsonKey(ignore: true)
  _$InitializeCopyWith<_Initialize> get copyWith;
}

/// @nodoc
abstract class _$ChangeStepCopyWith<$Res> {
  factory _$ChangeStepCopyWith(
          _ChangeStep value, $Res Function(_ChangeStep) then) =
      __$ChangeStepCopyWithImpl<$Res>;
  $Res call({int currentStep});
}

/// @nodoc
class __$ChangeStepCopyWithImpl<$Res>
    extends _$AppRedirectEventCopyWithImpl<$Res>
    implements _$ChangeStepCopyWith<$Res> {
  __$ChangeStepCopyWithImpl(
      _ChangeStep _value, $Res Function(_ChangeStep) _then)
      : super(_value, (v) => _then(v as _ChangeStep));

  @override
  _ChangeStep get _value => super._value as _ChangeStep;

  @override
  $Res call({
    Object currentStep = freezed,
  }) {
    return _then(_ChangeStep(
      currentStep == freezed ? _value.currentStep : currentStep as int,
    ));
  }
}

/// @nodoc
class _$_ChangeStep with DiagnosticableTreeMixin implements _ChangeStep {
  const _$_ChangeStep(this.currentStep) : assert(currentStep != null);

  @override
  final int currentStep;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppRedirectEvent.changeStep(currentStep: $currentStep)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppRedirectEvent.changeStep'))
      ..add(DiagnosticsProperty('currentStep', currentStep));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeStep &&
            (identical(other.currentStep, currentStep) ||
                const DeepCollectionEquality()
                    .equals(other.currentStep, currentStep)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(currentStep);

  @JsonKey(ignore: true)
  @override
  _$ChangeStepCopyWith<_ChangeStep> get copyWith =>
      __$ChangeStepCopyWithImpl<_ChangeStep>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialize(int startStep),
    @required TResult changeStep(int currentStep),
    @required TResult addOrRemoveWeekDay(int weekDay),
    @required TResult updateTime(String startTime, String endTime),
    @required TResult checkPermissions(),
    @required TResult requestAppUsagePermission(),
    @required TResult requestBatteryPermission(),
    @required TResult requestOverlayPermission(),
    @required TResult startAppRedirect(),
  }) {
    assert(initialize != null);
    assert(changeStep != null);
    assert(addOrRemoveWeekDay != null);
    assert(updateTime != null);
    assert(checkPermissions != null);
    assert(requestAppUsagePermission != null);
    assert(requestBatteryPermission != null);
    assert(requestOverlayPermission != null);
    assert(startAppRedirect != null);
    return changeStep(currentStep);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialize(int startStep),
    TResult changeStep(int currentStep),
    TResult addOrRemoveWeekDay(int weekDay),
    TResult updateTime(String startTime, String endTime),
    TResult checkPermissions(),
    TResult requestAppUsagePermission(),
    TResult requestBatteryPermission(),
    TResult requestOverlayPermission(),
    TResult startAppRedirect(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeStep != null) {
      return changeStep(currentStep);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialize(_Initialize value),
    @required TResult changeStep(_ChangeStep value),
    @required TResult addOrRemoveWeekDay(_AddOrRemoveWeekDay value),
    @required TResult updateTime(_UpdateTime value),
    @required TResult checkPermissions(_CheckPermission value),
    @required
        TResult requestAppUsagePermission(_RequestAppUsagePermission value),
    @required TResult requestBatteryPermission(_RequestBatteryPermission value),
    @required TResult requestOverlayPermission(_RequestOverlayPermission value),
    @required TResult startAppRedirect(_StartAppRedirect value),
  }) {
    assert(initialize != null);
    assert(changeStep != null);
    assert(addOrRemoveWeekDay != null);
    assert(updateTime != null);
    assert(checkPermissions != null);
    assert(requestAppUsagePermission != null);
    assert(requestBatteryPermission != null);
    assert(requestOverlayPermission != null);
    assert(startAppRedirect != null);
    return changeStep(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialize(_Initialize value),
    TResult changeStep(_ChangeStep value),
    TResult addOrRemoveWeekDay(_AddOrRemoveWeekDay value),
    TResult updateTime(_UpdateTime value),
    TResult checkPermissions(_CheckPermission value),
    TResult requestAppUsagePermission(_RequestAppUsagePermission value),
    TResult requestBatteryPermission(_RequestBatteryPermission value),
    TResult requestOverlayPermission(_RequestOverlayPermission value),
    TResult startAppRedirect(_StartAppRedirect value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeStep != null) {
      return changeStep(this);
    }
    return orElse();
  }
}

abstract class _ChangeStep implements AppRedirectEvent {
  const factory _ChangeStep(int currentStep) = _$_ChangeStep;

  int get currentStep;
  @JsonKey(ignore: true)
  _$ChangeStepCopyWith<_ChangeStep> get copyWith;
}

/// @nodoc
abstract class _$AddOrRemoveWeekDayCopyWith<$Res> {
  factory _$AddOrRemoveWeekDayCopyWith(
          _AddOrRemoveWeekDay value, $Res Function(_AddOrRemoveWeekDay) then) =
      __$AddOrRemoveWeekDayCopyWithImpl<$Res>;
  $Res call({int weekDay});
}

/// @nodoc
class __$AddOrRemoveWeekDayCopyWithImpl<$Res>
    extends _$AppRedirectEventCopyWithImpl<$Res>
    implements _$AddOrRemoveWeekDayCopyWith<$Res> {
  __$AddOrRemoveWeekDayCopyWithImpl(
      _AddOrRemoveWeekDay _value, $Res Function(_AddOrRemoveWeekDay) _then)
      : super(_value, (v) => _then(v as _AddOrRemoveWeekDay));

  @override
  _AddOrRemoveWeekDay get _value => super._value as _AddOrRemoveWeekDay;

  @override
  $Res call({
    Object weekDay = freezed,
  }) {
    return _then(_AddOrRemoveWeekDay(
      weekDay == freezed ? _value.weekDay : weekDay as int,
    ));
  }
}

/// @nodoc
class _$_AddOrRemoveWeekDay
    with DiagnosticableTreeMixin
    implements _AddOrRemoveWeekDay {
  const _$_AddOrRemoveWeekDay(this.weekDay) : assert(weekDay != null);

  @override
  final int weekDay;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppRedirectEvent.addOrRemoveWeekDay(weekDay: $weekDay)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppRedirectEvent.addOrRemoveWeekDay'))
      ..add(DiagnosticsProperty('weekDay', weekDay));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddOrRemoveWeekDay &&
            (identical(other.weekDay, weekDay) ||
                const DeepCollectionEquality().equals(other.weekDay, weekDay)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(weekDay);

  @JsonKey(ignore: true)
  @override
  _$AddOrRemoveWeekDayCopyWith<_AddOrRemoveWeekDay> get copyWith =>
      __$AddOrRemoveWeekDayCopyWithImpl<_AddOrRemoveWeekDay>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialize(int startStep),
    @required TResult changeStep(int currentStep),
    @required TResult addOrRemoveWeekDay(int weekDay),
    @required TResult updateTime(String startTime, String endTime),
    @required TResult checkPermissions(),
    @required TResult requestAppUsagePermission(),
    @required TResult requestBatteryPermission(),
    @required TResult requestOverlayPermission(),
    @required TResult startAppRedirect(),
  }) {
    assert(initialize != null);
    assert(changeStep != null);
    assert(addOrRemoveWeekDay != null);
    assert(updateTime != null);
    assert(checkPermissions != null);
    assert(requestAppUsagePermission != null);
    assert(requestBatteryPermission != null);
    assert(requestOverlayPermission != null);
    assert(startAppRedirect != null);
    return addOrRemoveWeekDay(weekDay);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialize(int startStep),
    TResult changeStep(int currentStep),
    TResult addOrRemoveWeekDay(int weekDay),
    TResult updateTime(String startTime, String endTime),
    TResult checkPermissions(),
    TResult requestAppUsagePermission(),
    TResult requestBatteryPermission(),
    TResult requestOverlayPermission(),
    TResult startAppRedirect(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addOrRemoveWeekDay != null) {
      return addOrRemoveWeekDay(weekDay);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialize(_Initialize value),
    @required TResult changeStep(_ChangeStep value),
    @required TResult addOrRemoveWeekDay(_AddOrRemoveWeekDay value),
    @required TResult updateTime(_UpdateTime value),
    @required TResult checkPermissions(_CheckPermission value),
    @required
        TResult requestAppUsagePermission(_RequestAppUsagePermission value),
    @required TResult requestBatteryPermission(_RequestBatteryPermission value),
    @required TResult requestOverlayPermission(_RequestOverlayPermission value),
    @required TResult startAppRedirect(_StartAppRedirect value),
  }) {
    assert(initialize != null);
    assert(changeStep != null);
    assert(addOrRemoveWeekDay != null);
    assert(updateTime != null);
    assert(checkPermissions != null);
    assert(requestAppUsagePermission != null);
    assert(requestBatteryPermission != null);
    assert(requestOverlayPermission != null);
    assert(startAppRedirect != null);
    return addOrRemoveWeekDay(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialize(_Initialize value),
    TResult changeStep(_ChangeStep value),
    TResult addOrRemoveWeekDay(_AddOrRemoveWeekDay value),
    TResult updateTime(_UpdateTime value),
    TResult checkPermissions(_CheckPermission value),
    TResult requestAppUsagePermission(_RequestAppUsagePermission value),
    TResult requestBatteryPermission(_RequestBatteryPermission value),
    TResult requestOverlayPermission(_RequestOverlayPermission value),
    TResult startAppRedirect(_StartAppRedirect value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addOrRemoveWeekDay != null) {
      return addOrRemoveWeekDay(this);
    }
    return orElse();
  }
}

abstract class _AddOrRemoveWeekDay implements AppRedirectEvent {
  const factory _AddOrRemoveWeekDay(int weekDay) = _$_AddOrRemoveWeekDay;

  int get weekDay;
  @JsonKey(ignore: true)
  _$AddOrRemoveWeekDayCopyWith<_AddOrRemoveWeekDay> get copyWith;
}

/// @nodoc
abstract class _$UpdateTimeCopyWith<$Res> {
  factory _$UpdateTimeCopyWith(
          _UpdateTime value, $Res Function(_UpdateTime) then) =
      __$UpdateTimeCopyWithImpl<$Res>;
  $Res call({String startTime, String endTime});
}

/// @nodoc
class __$UpdateTimeCopyWithImpl<$Res>
    extends _$AppRedirectEventCopyWithImpl<$Res>
    implements _$UpdateTimeCopyWith<$Res> {
  __$UpdateTimeCopyWithImpl(
      _UpdateTime _value, $Res Function(_UpdateTime) _then)
      : super(_value, (v) => _then(v as _UpdateTime));

  @override
  _UpdateTime get _value => super._value as _UpdateTime;

  @override
  $Res call({
    Object startTime = freezed,
    Object endTime = freezed,
  }) {
    return _then(_UpdateTime(
      startTime == freezed ? _value.startTime : startTime as String,
      endTime == freezed ? _value.endTime : endTime as String,
    ));
  }
}

/// @nodoc
class _$_UpdateTime with DiagnosticableTreeMixin implements _UpdateTime {
  const _$_UpdateTime(this.startTime, this.endTime)
      : assert(startTime != null),
        assert(endTime != null);

  @override
  final String startTime;
  @override
  final String endTime;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppRedirectEvent.updateTime(startTime: $startTime, endTime: $endTime)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppRedirectEvent.updateTime'))
      ..add(DiagnosticsProperty('startTime', startTime))
      ..add(DiagnosticsProperty('endTime', endTime));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateTime &&
            (identical(other.startTime, startTime) ||
                const DeepCollectionEquality()
                    .equals(other.startTime, startTime)) &&
            (identical(other.endTime, endTime) ||
                const DeepCollectionEquality().equals(other.endTime, endTime)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(startTime) ^
      const DeepCollectionEquality().hash(endTime);

  @JsonKey(ignore: true)
  @override
  _$UpdateTimeCopyWith<_UpdateTime> get copyWith =>
      __$UpdateTimeCopyWithImpl<_UpdateTime>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialize(int startStep),
    @required TResult changeStep(int currentStep),
    @required TResult addOrRemoveWeekDay(int weekDay),
    @required TResult updateTime(String startTime, String endTime),
    @required TResult checkPermissions(),
    @required TResult requestAppUsagePermission(),
    @required TResult requestBatteryPermission(),
    @required TResult requestOverlayPermission(),
    @required TResult startAppRedirect(),
  }) {
    assert(initialize != null);
    assert(changeStep != null);
    assert(addOrRemoveWeekDay != null);
    assert(updateTime != null);
    assert(checkPermissions != null);
    assert(requestAppUsagePermission != null);
    assert(requestBatteryPermission != null);
    assert(requestOverlayPermission != null);
    assert(startAppRedirect != null);
    return updateTime(startTime, endTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialize(int startStep),
    TResult changeStep(int currentStep),
    TResult addOrRemoveWeekDay(int weekDay),
    TResult updateTime(String startTime, String endTime),
    TResult checkPermissions(),
    TResult requestAppUsagePermission(),
    TResult requestBatteryPermission(),
    TResult requestOverlayPermission(),
    TResult startAppRedirect(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateTime != null) {
      return updateTime(startTime, endTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialize(_Initialize value),
    @required TResult changeStep(_ChangeStep value),
    @required TResult addOrRemoveWeekDay(_AddOrRemoveWeekDay value),
    @required TResult updateTime(_UpdateTime value),
    @required TResult checkPermissions(_CheckPermission value),
    @required
        TResult requestAppUsagePermission(_RequestAppUsagePermission value),
    @required TResult requestBatteryPermission(_RequestBatteryPermission value),
    @required TResult requestOverlayPermission(_RequestOverlayPermission value),
    @required TResult startAppRedirect(_StartAppRedirect value),
  }) {
    assert(initialize != null);
    assert(changeStep != null);
    assert(addOrRemoveWeekDay != null);
    assert(updateTime != null);
    assert(checkPermissions != null);
    assert(requestAppUsagePermission != null);
    assert(requestBatteryPermission != null);
    assert(requestOverlayPermission != null);
    assert(startAppRedirect != null);
    return updateTime(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialize(_Initialize value),
    TResult changeStep(_ChangeStep value),
    TResult addOrRemoveWeekDay(_AddOrRemoveWeekDay value),
    TResult updateTime(_UpdateTime value),
    TResult checkPermissions(_CheckPermission value),
    TResult requestAppUsagePermission(_RequestAppUsagePermission value),
    TResult requestBatteryPermission(_RequestBatteryPermission value),
    TResult requestOverlayPermission(_RequestOverlayPermission value),
    TResult startAppRedirect(_StartAppRedirect value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateTime != null) {
      return updateTime(this);
    }
    return orElse();
  }
}

abstract class _UpdateTime implements AppRedirectEvent {
  const factory _UpdateTime(String startTime, String endTime) = _$_UpdateTime;

  String get startTime;
  String get endTime;
  @JsonKey(ignore: true)
  _$UpdateTimeCopyWith<_UpdateTime> get copyWith;
}

/// @nodoc
abstract class _$CheckPermissionCopyWith<$Res> {
  factory _$CheckPermissionCopyWith(
          _CheckPermission value, $Res Function(_CheckPermission) then) =
      __$CheckPermissionCopyWithImpl<$Res>;
}

/// @nodoc
class __$CheckPermissionCopyWithImpl<$Res>
    extends _$AppRedirectEventCopyWithImpl<$Res>
    implements _$CheckPermissionCopyWith<$Res> {
  __$CheckPermissionCopyWithImpl(
      _CheckPermission _value, $Res Function(_CheckPermission) _then)
      : super(_value, (v) => _then(v as _CheckPermission));

  @override
  _CheckPermission get _value => super._value as _CheckPermission;
}

/// @nodoc
class _$_CheckPermission
    with DiagnosticableTreeMixin
    implements _CheckPermission {
  const _$_CheckPermission();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppRedirectEvent.checkPermissions()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppRedirectEvent.checkPermissions'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CheckPermission);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialize(int startStep),
    @required TResult changeStep(int currentStep),
    @required TResult addOrRemoveWeekDay(int weekDay),
    @required TResult updateTime(String startTime, String endTime),
    @required TResult checkPermissions(),
    @required TResult requestAppUsagePermission(),
    @required TResult requestBatteryPermission(),
    @required TResult requestOverlayPermission(),
    @required TResult startAppRedirect(),
  }) {
    assert(initialize != null);
    assert(changeStep != null);
    assert(addOrRemoveWeekDay != null);
    assert(updateTime != null);
    assert(checkPermissions != null);
    assert(requestAppUsagePermission != null);
    assert(requestBatteryPermission != null);
    assert(requestOverlayPermission != null);
    assert(startAppRedirect != null);
    return checkPermissions();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialize(int startStep),
    TResult changeStep(int currentStep),
    TResult addOrRemoveWeekDay(int weekDay),
    TResult updateTime(String startTime, String endTime),
    TResult checkPermissions(),
    TResult requestAppUsagePermission(),
    TResult requestBatteryPermission(),
    TResult requestOverlayPermission(),
    TResult startAppRedirect(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (checkPermissions != null) {
      return checkPermissions();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialize(_Initialize value),
    @required TResult changeStep(_ChangeStep value),
    @required TResult addOrRemoveWeekDay(_AddOrRemoveWeekDay value),
    @required TResult updateTime(_UpdateTime value),
    @required TResult checkPermissions(_CheckPermission value),
    @required
        TResult requestAppUsagePermission(_RequestAppUsagePermission value),
    @required TResult requestBatteryPermission(_RequestBatteryPermission value),
    @required TResult requestOverlayPermission(_RequestOverlayPermission value),
    @required TResult startAppRedirect(_StartAppRedirect value),
  }) {
    assert(initialize != null);
    assert(changeStep != null);
    assert(addOrRemoveWeekDay != null);
    assert(updateTime != null);
    assert(checkPermissions != null);
    assert(requestAppUsagePermission != null);
    assert(requestBatteryPermission != null);
    assert(requestOverlayPermission != null);
    assert(startAppRedirect != null);
    return checkPermissions(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialize(_Initialize value),
    TResult changeStep(_ChangeStep value),
    TResult addOrRemoveWeekDay(_AddOrRemoveWeekDay value),
    TResult updateTime(_UpdateTime value),
    TResult checkPermissions(_CheckPermission value),
    TResult requestAppUsagePermission(_RequestAppUsagePermission value),
    TResult requestBatteryPermission(_RequestBatteryPermission value),
    TResult requestOverlayPermission(_RequestOverlayPermission value),
    TResult startAppRedirect(_StartAppRedirect value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (checkPermissions != null) {
      return checkPermissions(this);
    }
    return orElse();
  }
}

abstract class _CheckPermission implements AppRedirectEvent {
  const factory _CheckPermission() = _$_CheckPermission;
}

/// @nodoc
abstract class _$RequestAppUsagePermissionCopyWith<$Res> {
  factory _$RequestAppUsagePermissionCopyWith(_RequestAppUsagePermission value,
          $Res Function(_RequestAppUsagePermission) then) =
      __$RequestAppUsagePermissionCopyWithImpl<$Res>;
}

/// @nodoc
class __$RequestAppUsagePermissionCopyWithImpl<$Res>
    extends _$AppRedirectEventCopyWithImpl<$Res>
    implements _$RequestAppUsagePermissionCopyWith<$Res> {
  __$RequestAppUsagePermissionCopyWithImpl(_RequestAppUsagePermission _value,
      $Res Function(_RequestAppUsagePermission) _then)
      : super(_value, (v) => _then(v as _RequestAppUsagePermission));

  @override
  _RequestAppUsagePermission get _value =>
      super._value as _RequestAppUsagePermission;
}

/// @nodoc
class _$_RequestAppUsagePermission
    with DiagnosticableTreeMixin
    implements _RequestAppUsagePermission {
  const _$_RequestAppUsagePermission();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppRedirectEvent.requestAppUsagePermission()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'AppRedirectEvent.requestAppUsagePermission'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _RequestAppUsagePermission);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialize(int startStep),
    @required TResult changeStep(int currentStep),
    @required TResult addOrRemoveWeekDay(int weekDay),
    @required TResult updateTime(String startTime, String endTime),
    @required TResult checkPermissions(),
    @required TResult requestAppUsagePermission(),
    @required TResult requestBatteryPermission(),
    @required TResult requestOverlayPermission(),
    @required TResult startAppRedirect(),
  }) {
    assert(initialize != null);
    assert(changeStep != null);
    assert(addOrRemoveWeekDay != null);
    assert(updateTime != null);
    assert(checkPermissions != null);
    assert(requestAppUsagePermission != null);
    assert(requestBatteryPermission != null);
    assert(requestOverlayPermission != null);
    assert(startAppRedirect != null);
    return requestAppUsagePermission();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialize(int startStep),
    TResult changeStep(int currentStep),
    TResult addOrRemoveWeekDay(int weekDay),
    TResult updateTime(String startTime, String endTime),
    TResult checkPermissions(),
    TResult requestAppUsagePermission(),
    TResult requestBatteryPermission(),
    TResult requestOverlayPermission(),
    TResult startAppRedirect(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (requestAppUsagePermission != null) {
      return requestAppUsagePermission();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialize(_Initialize value),
    @required TResult changeStep(_ChangeStep value),
    @required TResult addOrRemoveWeekDay(_AddOrRemoveWeekDay value),
    @required TResult updateTime(_UpdateTime value),
    @required TResult checkPermissions(_CheckPermission value),
    @required
        TResult requestAppUsagePermission(_RequestAppUsagePermission value),
    @required TResult requestBatteryPermission(_RequestBatteryPermission value),
    @required TResult requestOverlayPermission(_RequestOverlayPermission value),
    @required TResult startAppRedirect(_StartAppRedirect value),
  }) {
    assert(initialize != null);
    assert(changeStep != null);
    assert(addOrRemoveWeekDay != null);
    assert(updateTime != null);
    assert(checkPermissions != null);
    assert(requestAppUsagePermission != null);
    assert(requestBatteryPermission != null);
    assert(requestOverlayPermission != null);
    assert(startAppRedirect != null);
    return requestAppUsagePermission(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialize(_Initialize value),
    TResult changeStep(_ChangeStep value),
    TResult addOrRemoveWeekDay(_AddOrRemoveWeekDay value),
    TResult updateTime(_UpdateTime value),
    TResult checkPermissions(_CheckPermission value),
    TResult requestAppUsagePermission(_RequestAppUsagePermission value),
    TResult requestBatteryPermission(_RequestBatteryPermission value),
    TResult requestOverlayPermission(_RequestOverlayPermission value),
    TResult startAppRedirect(_StartAppRedirect value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (requestAppUsagePermission != null) {
      return requestAppUsagePermission(this);
    }
    return orElse();
  }
}

abstract class _RequestAppUsagePermission implements AppRedirectEvent {
  const factory _RequestAppUsagePermission() = _$_RequestAppUsagePermission;
}

/// @nodoc
abstract class _$RequestBatteryPermissionCopyWith<$Res> {
  factory _$RequestBatteryPermissionCopyWith(_RequestBatteryPermission value,
          $Res Function(_RequestBatteryPermission) then) =
      __$RequestBatteryPermissionCopyWithImpl<$Res>;
}

/// @nodoc
class __$RequestBatteryPermissionCopyWithImpl<$Res>
    extends _$AppRedirectEventCopyWithImpl<$Res>
    implements _$RequestBatteryPermissionCopyWith<$Res> {
  __$RequestBatteryPermissionCopyWithImpl(_RequestBatteryPermission _value,
      $Res Function(_RequestBatteryPermission) _then)
      : super(_value, (v) => _then(v as _RequestBatteryPermission));

  @override
  _RequestBatteryPermission get _value =>
      super._value as _RequestBatteryPermission;
}

/// @nodoc
class _$_RequestBatteryPermission
    with DiagnosticableTreeMixin
    implements _RequestBatteryPermission {
  const _$_RequestBatteryPermission();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppRedirectEvent.requestBatteryPermission()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'AppRedirectEvent.requestBatteryPermission'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _RequestBatteryPermission);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialize(int startStep),
    @required TResult changeStep(int currentStep),
    @required TResult addOrRemoveWeekDay(int weekDay),
    @required TResult updateTime(String startTime, String endTime),
    @required TResult checkPermissions(),
    @required TResult requestAppUsagePermission(),
    @required TResult requestBatteryPermission(),
    @required TResult requestOverlayPermission(),
    @required TResult startAppRedirect(),
  }) {
    assert(initialize != null);
    assert(changeStep != null);
    assert(addOrRemoveWeekDay != null);
    assert(updateTime != null);
    assert(checkPermissions != null);
    assert(requestAppUsagePermission != null);
    assert(requestBatteryPermission != null);
    assert(requestOverlayPermission != null);
    assert(startAppRedirect != null);
    return requestBatteryPermission();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialize(int startStep),
    TResult changeStep(int currentStep),
    TResult addOrRemoveWeekDay(int weekDay),
    TResult updateTime(String startTime, String endTime),
    TResult checkPermissions(),
    TResult requestAppUsagePermission(),
    TResult requestBatteryPermission(),
    TResult requestOverlayPermission(),
    TResult startAppRedirect(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (requestBatteryPermission != null) {
      return requestBatteryPermission();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialize(_Initialize value),
    @required TResult changeStep(_ChangeStep value),
    @required TResult addOrRemoveWeekDay(_AddOrRemoveWeekDay value),
    @required TResult updateTime(_UpdateTime value),
    @required TResult checkPermissions(_CheckPermission value),
    @required
        TResult requestAppUsagePermission(_RequestAppUsagePermission value),
    @required TResult requestBatteryPermission(_RequestBatteryPermission value),
    @required TResult requestOverlayPermission(_RequestOverlayPermission value),
    @required TResult startAppRedirect(_StartAppRedirect value),
  }) {
    assert(initialize != null);
    assert(changeStep != null);
    assert(addOrRemoveWeekDay != null);
    assert(updateTime != null);
    assert(checkPermissions != null);
    assert(requestAppUsagePermission != null);
    assert(requestBatteryPermission != null);
    assert(requestOverlayPermission != null);
    assert(startAppRedirect != null);
    return requestBatteryPermission(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialize(_Initialize value),
    TResult changeStep(_ChangeStep value),
    TResult addOrRemoveWeekDay(_AddOrRemoveWeekDay value),
    TResult updateTime(_UpdateTime value),
    TResult checkPermissions(_CheckPermission value),
    TResult requestAppUsagePermission(_RequestAppUsagePermission value),
    TResult requestBatteryPermission(_RequestBatteryPermission value),
    TResult requestOverlayPermission(_RequestOverlayPermission value),
    TResult startAppRedirect(_StartAppRedirect value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (requestBatteryPermission != null) {
      return requestBatteryPermission(this);
    }
    return orElse();
  }
}

abstract class _RequestBatteryPermission implements AppRedirectEvent {
  const factory _RequestBatteryPermission() = _$_RequestBatteryPermission;
}

/// @nodoc
abstract class _$RequestOverlayPermissionCopyWith<$Res> {
  factory _$RequestOverlayPermissionCopyWith(_RequestOverlayPermission value,
          $Res Function(_RequestOverlayPermission) then) =
      __$RequestOverlayPermissionCopyWithImpl<$Res>;
}

/// @nodoc
class __$RequestOverlayPermissionCopyWithImpl<$Res>
    extends _$AppRedirectEventCopyWithImpl<$Res>
    implements _$RequestOverlayPermissionCopyWith<$Res> {
  __$RequestOverlayPermissionCopyWithImpl(_RequestOverlayPermission _value,
      $Res Function(_RequestOverlayPermission) _then)
      : super(_value, (v) => _then(v as _RequestOverlayPermission));

  @override
  _RequestOverlayPermission get _value =>
      super._value as _RequestOverlayPermission;
}

/// @nodoc
class _$_RequestOverlayPermission
    with DiagnosticableTreeMixin
    implements _RequestOverlayPermission {
  const _$_RequestOverlayPermission();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppRedirectEvent.requestOverlayPermission()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'AppRedirectEvent.requestOverlayPermission'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _RequestOverlayPermission);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialize(int startStep),
    @required TResult changeStep(int currentStep),
    @required TResult addOrRemoveWeekDay(int weekDay),
    @required TResult updateTime(String startTime, String endTime),
    @required TResult checkPermissions(),
    @required TResult requestAppUsagePermission(),
    @required TResult requestBatteryPermission(),
    @required TResult requestOverlayPermission(),
    @required TResult startAppRedirect(),
  }) {
    assert(initialize != null);
    assert(changeStep != null);
    assert(addOrRemoveWeekDay != null);
    assert(updateTime != null);
    assert(checkPermissions != null);
    assert(requestAppUsagePermission != null);
    assert(requestBatteryPermission != null);
    assert(requestOverlayPermission != null);
    assert(startAppRedirect != null);
    return requestOverlayPermission();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialize(int startStep),
    TResult changeStep(int currentStep),
    TResult addOrRemoveWeekDay(int weekDay),
    TResult updateTime(String startTime, String endTime),
    TResult checkPermissions(),
    TResult requestAppUsagePermission(),
    TResult requestBatteryPermission(),
    TResult requestOverlayPermission(),
    TResult startAppRedirect(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (requestOverlayPermission != null) {
      return requestOverlayPermission();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialize(_Initialize value),
    @required TResult changeStep(_ChangeStep value),
    @required TResult addOrRemoveWeekDay(_AddOrRemoveWeekDay value),
    @required TResult updateTime(_UpdateTime value),
    @required TResult checkPermissions(_CheckPermission value),
    @required
        TResult requestAppUsagePermission(_RequestAppUsagePermission value),
    @required TResult requestBatteryPermission(_RequestBatteryPermission value),
    @required TResult requestOverlayPermission(_RequestOverlayPermission value),
    @required TResult startAppRedirect(_StartAppRedirect value),
  }) {
    assert(initialize != null);
    assert(changeStep != null);
    assert(addOrRemoveWeekDay != null);
    assert(updateTime != null);
    assert(checkPermissions != null);
    assert(requestAppUsagePermission != null);
    assert(requestBatteryPermission != null);
    assert(requestOverlayPermission != null);
    assert(startAppRedirect != null);
    return requestOverlayPermission(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialize(_Initialize value),
    TResult changeStep(_ChangeStep value),
    TResult addOrRemoveWeekDay(_AddOrRemoveWeekDay value),
    TResult updateTime(_UpdateTime value),
    TResult checkPermissions(_CheckPermission value),
    TResult requestAppUsagePermission(_RequestAppUsagePermission value),
    TResult requestBatteryPermission(_RequestBatteryPermission value),
    TResult requestOverlayPermission(_RequestOverlayPermission value),
    TResult startAppRedirect(_StartAppRedirect value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (requestOverlayPermission != null) {
      return requestOverlayPermission(this);
    }
    return orElse();
  }
}

abstract class _RequestOverlayPermission implements AppRedirectEvent {
  const factory _RequestOverlayPermission() = _$_RequestOverlayPermission;
}

/// @nodoc
abstract class _$StartAppRedirectCopyWith<$Res> {
  factory _$StartAppRedirectCopyWith(
          _StartAppRedirect value, $Res Function(_StartAppRedirect) then) =
      __$StartAppRedirectCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartAppRedirectCopyWithImpl<$Res>
    extends _$AppRedirectEventCopyWithImpl<$Res>
    implements _$StartAppRedirectCopyWith<$Res> {
  __$StartAppRedirectCopyWithImpl(
      _StartAppRedirect _value, $Res Function(_StartAppRedirect) _then)
      : super(_value, (v) => _then(v as _StartAppRedirect));

  @override
  _StartAppRedirect get _value => super._value as _StartAppRedirect;
}

/// @nodoc
class _$_StartAppRedirect
    with DiagnosticableTreeMixin
    implements _StartAppRedirect {
  const _$_StartAppRedirect();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppRedirectEvent.startAppRedirect()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppRedirectEvent.startAppRedirect'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _StartAppRedirect);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialize(int startStep),
    @required TResult changeStep(int currentStep),
    @required TResult addOrRemoveWeekDay(int weekDay),
    @required TResult updateTime(String startTime, String endTime),
    @required TResult checkPermissions(),
    @required TResult requestAppUsagePermission(),
    @required TResult requestBatteryPermission(),
    @required TResult requestOverlayPermission(),
    @required TResult startAppRedirect(),
  }) {
    assert(initialize != null);
    assert(changeStep != null);
    assert(addOrRemoveWeekDay != null);
    assert(updateTime != null);
    assert(checkPermissions != null);
    assert(requestAppUsagePermission != null);
    assert(requestBatteryPermission != null);
    assert(requestOverlayPermission != null);
    assert(startAppRedirect != null);
    return startAppRedirect();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialize(int startStep),
    TResult changeStep(int currentStep),
    TResult addOrRemoveWeekDay(int weekDay),
    TResult updateTime(String startTime, String endTime),
    TResult checkPermissions(),
    TResult requestAppUsagePermission(),
    TResult requestBatteryPermission(),
    TResult requestOverlayPermission(),
    TResult startAppRedirect(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (startAppRedirect != null) {
      return startAppRedirect();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialize(_Initialize value),
    @required TResult changeStep(_ChangeStep value),
    @required TResult addOrRemoveWeekDay(_AddOrRemoveWeekDay value),
    @required TResult updateTime(_UpdateTime value),
    @required TResult checkPermissions(_CheckPermission value),
    @required
        TResult requestAppUsagePermission(_RequestAppUsagePermission value),
    @required TResult requestBatteryPermission(_RequestBatteryPermission value),
    @required TResult requestOverlayPermission(_RequestOverlayPermission value),
    @required TResult startAppRedirect(_StartAppRedirect value),
  }) {
    assert(initialize != null);
    assert(changeStep != null);
    assert(addOrRemoveWeekDay != null);
    assert(updateTime != null);
    assert(checkPermissions != null);
    assert(requestAppUsagePermission != null);
    assert(requestBatteryPermission != null);
    assert(requestOverlayPermission != null);
    assert(startAppRedirect != null);
    return startAppRedirect(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialize(_Initialize value),
    TResult changeStep(_ChangeStep value),
    TResult addOrRemoveWeekDay(_AddOrRemoveWeekDay value),
    TResult updateTime(_UpdateTime value),
    TResult checkPermissions(_CheckPermission value),
    TResult requestAppUsagePermission(_RequestAppUsagePermission value),
    TResult requestBatteryPermission(_RequestBatteryPermission value),
    TResult requestOverlayPermission(_RequestOverlayPermission value),
    TResult startAppRedirect(_StartAppRedirect value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (startAppRedirect != null) {
      return startAppRedirect(this);
    }
    return orElse();
  }
}

abstract class _StartAppRedirect implements AppRedirectEvent {
  const factory _StartAppRedirect() = _$_StartAppRedirect;
}

/// @nodoc
class _$AppRedirectStateTearOff {
  const _$AppRedirectStateTearOff();

// ignore: unused_element
  _AppRedirectState call(
      {int totalSteps,
      int currentStep,
      List<String> blockedPackages,
      String startTime,
      String endTime,
      KtList<int> selectedWeekDays,
      Failure failure,
      PermissionState appUsagePermission,
      PermissionState batteryPermission,
      PermissionState overlayPermission}) {
    return _AppRedirectState(
      totalSteps: totalSteps,
      currentStep: currentStep,
      blockedPackages: blockedPackages,
      startTime: startTime,
      endTime: endTime,
      selectedWeekDays: selectedWeekDays,
      failure: failure,
      appUsagePermission: appUsagePermission,
      batteryPermission: batteryPermission,
      overlayPermission: overlayPermission,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AppRedirectState = _$AppRedirectStateTearOff();

/// @nodoc
mixin _$AppRedirectState {
  int get totalSteps;
  int get currentStep;
  List<String> get blockedPackages; // List of blockedPackages
//KtList<String> selectedPackages, // List of selectedPackages
  String get startTime; // StartTime
  String get endTime; // EndTime
  KtList<int> get selectedWeekDays; // SelectedWeekDays
  Failure get failure; // Failure
  PermissionState get appUsagePermission;
  PermissionState get batteryPermission;
  PermissionState get overlayPermission;

  @JsonKey(ignore: true)
  $AppRedirectStateCopyWith<AppRedirectState> get copyWith;
}

/// @nodoc
abstract class $AppRedirectStateCopyWith<$Res> {
  factory $AppRedirectStateCopyWith(
          AppRedirectState value, $Res Function(AppRedirectState) then) =
      _$AppRedirectStateCopyWithImpl<$Res>;
  $Res call(
      {int totalSteps,
      int currentStep,
      List<String> blockedPackages,
      String startTime,
      String endTime,
      KtList<int> selectedWeekDays,
      Failure failure,
      PermissionState appUsagePermission,
      PermissionState batteryPermission,
      PermissionState overlayPermission});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$AppRedirectStateCopyWithImpl<$Res>
    implements $AppRedirectStateCopyWith<$Res> {
  _$AppRedirectStateCopyWithImpl(this._value, this._then);

  final AppRedirectState _value;
  // ignore: unused_field
  final $Res Function(AppRedirectState) _then;

  @override
  $Res call({
    Object totalSteps = freezed,
    Object currentStep = freezed,
    Object blockedPackages = freezed,
    Object startTime = freezed,
    Object endTime = freezed,
    Object selectedWeekDays = freezed,
    Object failure = freezed,
    Object appUsagePermission = freezed,
    Object batteryPermission = freezed,
    Object overlayPermission = freezed,
  }) {
    return _then(_value.copyWith(
      totalSteps: totalSteps == freezed ? _value.totalSteps : totalSteps as int,
      currentStep:
          currentStep == freezed ? _value.currentStep : currentStep as int,
      blockedPackages: blockedPackages == freezed
          ? _value.blockedPackages
          : blockedPackages as List<String>,
      startTime: startTime == freezed ? _value.startTime : startTime as String,
      endTime: endTime == freezed ? _value.endTime : endTime as String,
      selectedWeekDays: selectedWeekDays == freezed
          ? _value.selectedWeekDays
          : selectedWeekDays as KtList<int>,
      failure: failure == freezed ? _value.failure : failure as Failure,
      appUsagePermission: appUsagePermission == freezed
          ? _value.appUsagePermission
          : appUsagePermission as PermissionState,
      batteryPermission: batteryPermission == freezed
          ? _value.batteryPermission
          : batteryPermission as PermissionState,
      overlayPermission: overlayPermission == freezed
          ? _value.overlayPermission
          : overlayPermission as PermissionState,
    ));
  }

  @override
  $FailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $FailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
abstract class _$AppRedirectStateCopyWith<$Res>
    implements $AppRedirectStateCopyWith<$Res> {
  factory _$AppRedirectStateCopyWith(
          _AppRedirectState value, $Res Function(_AppRedirectState) then) =
      __$AppRedirectStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int totalSteps,
      int currentStep,
      List<String> blockedPackages,
      String startTime,
      String endTime,
      KtList<int> selectedWeekDays,
      Failure failure,
      PermissionState appUsagePermission,
      PermissionState batteryPermission,
      PermissionState overlayPermission});

  @override
  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$AppRedirectStateCopyWithImpl<$Res>
    extends _$AppRedirectStateCopyWithImpl<$Res>
    implements _$AppRedirectStateCopyWith<$Res> {
  __$AppRedirectStateCopyWithImpl(
      _AppRedirectState _value, $Res Function(_AppRedirectState) _then)
      : super(_value, (v) => _then(v as _AppRedirectState));

  @override
  _AppRedirectState get _value => super._value as _AppRedirectState;

  @override
  $Res call({
    Object totalSteps = freezed,
    Object currentStep = freezed,
    Object blockedPackages = freezed,
    Object startTime = freezed,
    Object endTime = freezed,
    Object selectedWeekDays = freezed,
    Object failure = freezed,
    Object appUsagePermission = freezed,
    Object batteryPermission = freezed,
    Object overlayPermission = freezed,
  }) {
    return _then(_AppRedirectState(
      totalSteps: totalSteps == freezed ? _value.totalSteps : totalSteps as int,
      currentStep:
          currentStep == freezed ? _value.currentStep : currentStep as int,
      blockedPackages: blockedPackages == freezed
          ? _value.blockedPackages
          : blockedPackages as List<String>,
      startTime: startTime == freezed ? _value.startTime : startTime as String,
      endTime: endTime == freezed ? _value.endTime : endTime as String,
      selectedWeekDays: selectedWeekDays == freezed
          ? _value.selectedWeekDays
          : selectedWeekDays as KtList<int>,
      failure: failure == freezed ? _value.failure : failure as Failure,
      appUsagePermission: appUsagePermission == freezed
          ? _value.appUsagePermission
          : appUsagePermission as PermissionState,
      batteryPermission: batteryPermission == freezed
          ? _value.batteryPermission
          : batteryPermission as PermissionState,
      overlayPermission: overlayPermission == freezed
          ? _value.overlayPermission
          : overlayPermission as PermissionState,
    ));
  }
}

/// @nodoc
class _$_AppRedirectState
    with DiagnosticableTreeMixin
    implements _AppRedirectState {
  const _$_AppRedirectState(
      {this.totalSteps,
      this.currentStep,
      this.blockedPackages,
      this.startTime,
      this.endTime,
      this.selectedWeekDays,
      this.failure,
      this.appUsagePermission,
      this.batteryPermission,
      this.overlayPermission});

  @override
  final int totalSteps;
  @override
  final int currentStep;
  @override
  final List<String> blockedPackages;
  @override // List of blockedPackages
//KtList<String> selectedPackages, // List of selectedPackages
  final String startTime;
  @override // StartTime
  final String endTime;
  @override // EndTime
  final KtList<int> selectedWeekDays;
  @override // SelectedWeekDays
  final Failure failure;
  @override // Failure
  final PermissionState appUsagePermission;
  @override
  final PermissionState batteryPermission;
  @override
  final PermissionState overlayPermission;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppRedirectState(totalSteps: $totalSteps, currentStep: $currentStep, blockedPackages: $blockedPackages, startTime: $startTime, endTime: $endTime, selectedWeekDays: $selectedWeekDays, failure: $failure, appUsagePermission: $appUsagePermission, batteryPermission: $batteryPermission, overlayPermission: $overlayPermission)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppRedirectState'))
      ..add(DiagnosticsProperty('totalSteps', totalSteps))
      ..add(DiagnosticsProperty('currentStep', currentStep))
      ..add(DiagnosticsProperty('blockedPackages', blockedPackages))
      ..add(DiagnosticsProperty('startTime', startTime))
      ..add(DiagnosticsProperty('endTime', endTime))
      ..add(DiagnosticsProperty('selectedWeekDays', selectedWeekDays))
      ..add(DiagnosticsProperty('failure', failure))
      ..add(DiagnosticsProperty('appUsagePermission', appUsagePermission))
      ..add(DiagnosticsProperty('batteryPermission', batteryPermission))
      ..add(DiagnosticsProperty('overlayPermission', overlayPermission));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AppRedirectState &&
            (identical(other.totalSteps, totalSteps) ||
                const DeepCollectionEquality()
                    .equals(other.totalSteps, totalSteps)) &&
            (identical(other.currentStep, currentStep) ||
                const DeepCollectionEquality()
                    .equals(other.currentStep, currentStep)) &&
            (identical(other.blockedPackages, blockedPackages) ||
                const DeepCollectionEquality()
                    .equals(other.blockedPackages, blockedPackages)) &&
            (identical(other.startTime, startTime) ||
                const DeepCollectionEquality()
                    .equals(other.startTime, startTime)) &&
            (identical(other.endTime, endTime) ||
                const DeepCollectionEquality()
                    .equals(other.endTime, endTime)) &&
            (identical(other.selectedWeekDays, selectedWeekDays) ||
                const DeepCollectionEquality()
                    .equals(other.selectedWeekDays, selectedWeekDays)) &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality()
                    .equals(other.failure, failure)) &&
            (identical(other.appUsagePermission, appUsagePermission) ||
                const DeepCollectionEquality()
                    .equals(other.appUsagePermission, appUsagePermission)) &&
            (identical(other.batteryPermission, batteryPermission) ||
                const DeepCollectionEquality()
                    .equals(other.batteryPermission, batteryPermission)) &&
            (identical(other.overlayPermission, overlayPermission) ||
                const DeepCollectionEquality()
                    .equals(other.overlayPermission, overlayPermission)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(totalSteps) ^
      const DeepCollectionEquality().hash(currentStep) ^
      const DeepCollectionEquality().hash(blockedPackages) ^
      const DeepCollectionEquality().hash(startTime) ^
      const DeepCollectionEquality().hash(endTime) ^
      const DeepCollectionEquality().hash(selectedWeekDays) ^
      const DeepCollectionEquality().hash(failure) ^
      const DeepCollectionEquality().hash(appUsagePermission) ^
      const DeepCollectionEquality().hash(batteryPermission) ^
      const DeepCollectionEquality().hash(overlayPermission);

  @JsonKey(ignore: true)
  @override
  _$AppRedirectStateCopyWith<_AppRedirectState> get copyWith =>
      __$AppRedirectStateCopyWithImpl<_AppRedirectState>(this, _$identity);
}

abstract class _AppRedirectState implements AppRedirectState {
  const factory _AppRedirectState(
      {int totalSteps,
      int currentStep,
      List<String> blockedPackages,
      String startTime,
      String endTime,
      KtList<int> selectedWeekDays,
      Failure failure,
      PermissionState appUsagePermission,
      PermissionState batteryPermission,
      PermissionState overlayPermission}) = _$_AppRedirectState;

  @override
  int get totalSteps;
  @override
  int get currentStep;
  @override
  List<String> get blockedPackages;
  @override // List of blockedPackages
//KtList<String> selectedPackages, // List of selectedPackages
  String get startTime;
  @override // StartTime
  String get endTime;
  @override // EndTime
  KtList<int> get selectedWeekDays;
  @override // SelectedWeekDays
  Failure get failure;
  @override // Failure
  PermissionState get appUsagePermission;
  @override
  PermissionState get batteryPermission;
  @override
  PermissionState get overlayPermission;
  @override
  @JsonKey(ignore: true)
  _$AppRedirectStateCopyWith<_AppRedirectState> get copyWith;
}
