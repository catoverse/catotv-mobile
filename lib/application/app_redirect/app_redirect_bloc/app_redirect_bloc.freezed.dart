// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'app_redirect_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

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
  _StartAppRedirect startAppRedirect() {
    return const _StartAppRedirect();
  }
}

// ignore: unused_element
const $AppRedirectEvent = _$AppRedirectEventTearOff();

mixin _$AppRedirectEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialize(int startStep),
    @required Result changeStep(int currentStep),
    @required Result addOrRemoveWeekDay(int weekDay),
    @required Result updateTime(String startTime, String endTime),
    @required Result checkPermissions(),
    @required Result requestAppUsagePermission(),
    @required Result requestBatteryPermission(),
    @required Result startAppRedirect(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(int startStep),
    Result changeStep(int currentStep),
    Result addOrRemoveWeekDay(int weekDay),
    Result updateTime(String startTime, String endTime),
    Result checkPermissions(),
    Result requestAppUsagePermission(),
    Result requestBatteryPermission(),
    Result startAppRedirect(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialize(_Initialize value),
    @required Result changeStep(_ChangeStep value),
    @required Result addOrRemoveWeekDay(_AddOrRemoveWeekDay value),
    @required Result updateTime(_UpdateTime value),
    @required Result checkPermissions(_CheckPermission value),
    @required
        Result requestAppUsagePermission(_RequestAppUsagePermission value),
    @required Result requestBatteryPermission(_RequestBatteryPermission value),
    @required Result startAppRedirect(_StartAppRedirect value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(_Initialize value),
    Result changeStep(_ChangeStep value),
    Result addOrRemoveWeekDay(_AddOrRemoveWeekDay value),
    Result updateTime(_UpdateTime value),
    Result checkPermissions(_CheckPermission value),
    Result requestAppUsagePermission(_RequestAppUsagePermission value),
    Result requestBatteryPermission(_RequestBatteryPermission value),
    Result startAppRedirect(_StartAppRedirect value),
    @required Result orElse(),
  });
}

abstract class $AppRedirectEventCopyWith<$Res> {
  factory $AppRedirectEventCopyWith(
          AppRedirectEvent value, $Res Function(AppRedirectEvent) then) =
      _$AppRedirectEventCopyWithImpl<$Res>;
}

class _$AppRedirectEventCopyWithImpl<$Res>
    implements $AppRedirectEventCopyWith<$Res> {
  _$AppRedirectEventCopyWithImpl(this._value, this._then);

  final AppRedirectEvent _value;
  // ignore: unused_field
  final $Res Function(AppRedirectEvent) _then;
}

abstract class _$InitializeCopyWith<$Res> {
  factory _$InitializeCopyWith(
          _Initialize value, $Res Function(_Initialize) then) =
      __$InitializeCopyWithImpl<$Res>;
  $Res call({int startStep});
}

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

class _$_Initialize implements _Initialize {
  const _$_Initialize(this.startStep) : assert(startStep != null);

  @override
  final int startStep;

  @override
  String toString() {
    return 'AppRedirectEvent.initialize(startStep: $startStep)';
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

  @override
  _$InitializeCopyWith<_Initialize> get copyWith =>
      __$InitializeCopyWithImpl<_Initialize>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialize(int startStep),
    @required Result changeStep(int currentStep),
    @required Result addOrRemoveWeekDay(int weekDay),
    @required Result updateTime(String startTime, String endTime),
    @required Result checkPermissions(),
    @required Result requestAppUsagePermission(),
    @required Result requestBatteryPermission(),
    @required Result startAppRedirect(),
  }) {
    assert(initialize != null);
    assert(changeStep != null);
    assert(addOrRemoveWeekDay != null);
    assert(updateTime != null);
    assert(checkPermissions != null);
    assert(requestAppUsagePermission != null);
    assert(requestBatteryPermission != null);
    assert(startAppRedirect != null);
    return initialize(startStep);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(int startStep),
    Result changeStep(int currentStep),
    Result addOrRemoveWeekDay(int weekDay),
    Result updateTime(String startTime, String endTime),
    Result checkPermissions(),
    Result requestAppUsagePermission(),
    Result requestBatteryPermission(),
    Result startAppRedirect(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialize != null) {
      return initialize(startStep);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialize(_Initialize value),
    @required Result changeStep(_ChangeStep value),
    @required Result addOrRemoveWeekDay(_AddOrRemoveWeekDay value),
    @required Result updateTime(_UpdateTime value),
    @required Result checkPermissions(_CheckPermission value),
    @required
        Result requestAppUsagePermission(_RequestAppUsagePermission value),
    @required Result requestBatteryPermission(_RequestBatteryPermission value),
    @required Result startAppRedirect(_StartAppRedirect value),
  }) {
    assert(initialize != null);
    assert(changeStep != null);
    assert(addOrRemoveWeekDay != null);
    assert(updateTime != null);
    assert(checkPermissions != null);
    assert(requestAppUsagePermission != null);
    assert(requestBatteryPermission != null);
    assert(startAppRedirect != null);
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(_Initialize value),
    Result changeStep(_ChangeStep value),
    Result addOrRemoveWeekDay(_AddOrRemoveWeekDay value),
    Result updateTime(_UpdateTime value),
    Result checkPermissions(_CheckPermission value),
    Result requestAppUsagePermission(_RequestAppUsagePermission value),
    Result requestBatteryPermission(_RequestBatteryPermission value),
    Result startAppRedirect(_StartAppRedirect value),
    @required Result orElse(),
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
  _$InitializeCopyWith<_Initialize> get copyWith;
}

abstract class _$ChangeStepCopyWith<$Res> {
  factory _$ChangeStepCopyWith(
          _ChangeStep value, $Res Function(_ChangeStep) then) =
      __$ChangeStepCopyWithImpl<$Res>;
  $Res call({int currentStep});
}

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

class _$_ChangeStep implements _ChangeStep {
  const _$_ChangeStep(this.currentStep) : assert(currentStep != null);

  @override
  final int currentStep;

  @override
  String toString() {
    return 'AppRedirectEvent.changeStep(currentStep: $currentStep)';
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

  @override
  _$ChangeStepCopyWith<_ChangeStep> get copyWith =>
      __$ChangeStepCopyWithImpl<_ChangeStep>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialize(int startStep),
    @required Result changeStep(int currentStep),
    @required Result addOrRemoveWeekDay(int weekDay),
    @required Result updateTime(String startTime, String endTime),
    @required Result checkPermissions(),
    @required Result requestAppUsagePermission(),
    @required Result requestBatteryPermission(),
    @required Result startAppRedirect(),
  }) {
    assert(initialize != null);
    assert(changeStep != null);
    assert(addOrRemoveWeekDay != null);
    assert(updateTime != null);
    assert(checkPermissions != null);
    assert(requestAppUsagePermission != null);
    assert(requestBatteryPermission != null);
    assert(startAppRedirect != null);
    return changeStep(currentStep);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(int startStep),
    Result changeStep(int currentStep),
    Result addOrRemoveWeekDay(int weekDay),
    Result updateTime(String startTime, String endTime),
    Result checkPermissions(),
    Result requestAppUsagePermission(),
    Result requestBatteryPermission(),
    Result startAppRedirect(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changeStep != null) {
      return changeStep(currentStep);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialize(_Initialize value),
    @required Result changeStep(_ChangeStep value),
    @required Result addOrRemoveWeekDay(_AddOrRemoveWeekDay value),
    @required Result updateTime(_UpdateTime value),
    @required Result checkPermissions(_CheckPermission value),
    @required
        Result requestAppUsagePermission(_RequestAppUsagePermission value),
    @required Result requestBatteryPermission(_RequestBatteryPermission value),
    @required Result startAppRedirect(_StartAppRedirect value),
  }) {
    assert(initialize != null);
    assert(changeStep != null);
    assert(addOrRemoveWeekDay != null);
    assert(updateTime != null);
    assert(checkPermissions != null);
    assert(requestAppUsagePermission != null);
    assert(requestBatteryPermission != null);
    assert(startAppRedirect != null);
    return changeStep(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(_Initialize value),
    Result changeStep(_ChangeStep value),
    Result addOrRemoveWeekDay(_AddOrRemoveWeekDay value),
    Result updateTime(_UpdateTime value),
    Result checkPermissions(_CheckPermission value),
    Result requestAppUsagePermission(_RequestAppUsagePermission value),
    Result requestBatteryPermission(_RequestBatteryPermission value),
    Result startAppRedirect(_StartAppRedirect value),
    @required Result orElse(),
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
  _$ChangeStepCopyWith<_ChangeStep> get copyWith;
}

abstract class _$AddOrRemoveWeekDayCopyWith<$Res> {
  factory _$AddOrRemoveWeekDayCopyWith(
          _AddOrRemoveWeekDay value, $Res Function(_AddOrRemoveWeekDay) then) =
      __$AddOrRemoveWeekDayCopyWithImpl<$Res>;
  $Res call({int weekDay});
}

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

class _$_AddOrRemoveWeekDay implements _AddOrRemoveWeekDay {
  const _$_AddOrRemoveWeekDay(this.weekDay) : assert(weekDay != null);

  @override
  final int weekDay;

  @override
  String toString() {
    return 'AppRedirectEvent.addOrRemoveWeekDay(weekDay: $weekDay)';
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

  @override
  _$AddOrRemoveWeekDayCopyWith<_AddOrRemoveWeekDay> get copyWith =>
      __$AddOrRemoveWeekDayCopyWithImpl<_AddOrRemoveWeekDay>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialize(int startStep),
    @required Result changeStep(int currentStep),
    @required Result addOrRemoveWeekDay(int weekDay),
    @required Result updateTime(String startTime, String endTime),
    @required Result checkPermissions(),
    @required Result requestAppUsagePermission(),
    @required Result requestBatteryPermission(),
    @required Result startAppRedirect(),
  }) {
    assert(initialize != null);
    assert(changeStep != null);
    assert(addOrRemoveWeekDay != null);
    assert(updateTime != null);
    assert(checkPermissions != null);
    assert(requestAppUsagePermission != null);
    assert(requestBatteryPermission != null);
    assert(startAppRedirect != null);
    return addOrRemoveWeekDay(weekDay);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(int startStep),
    Result changeStep(int currentStep),
    Result addOrRemoveWeekDay(int weekDay),
    Result updateTime(String startTime, String endTime),
    Result checkPermissions(),
    Result requestAppUsagePermission(),
    Result requestBatteryPermission(),
    Result startAppRedirect(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addOrRemoveWeekDay != null) {
      return addOrRemoveWeekDay(weekDay);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialize(_Initialize value),
    @required Result changeStep(_ChangeStep value),
    @required Result addOrRemoveWeekDay(_AddOrRemoveWeekDay value),
    @required Result updateTime(_UpdateTime value),
    @required Result checkPermissions(_CheckPermission value),
    @required
        Result requestAppUsagePermission(_RequestAppUsagePermission value),
    @required Result requestBatteryPermission(_RequestBatteryPermission value),
    @required Result startAppRedirect(_StartAppRedirect value),
  }) {
    assert(initialize != null);
    assert(changeStep != null);
    assert(addOrRemoveWeekDay != null);
    assert(updateTime != null);
    assert(checkPermissions != null);
    assert(requestAppUsagePermission != null);
    assert(requestBatteryPermission != null);
    assert(startAppRedirect != null);
    return addOrRemoveWeekDay(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(_Initialize value),
    Result changeStep(_ChangeStep value),
    Result addOrRemoveWeekDay(_AddOrRemoveWeekDay value),
    Result updateTime(_UpdateTime value),
    Result checkPermissions(_CheckPermission value),
    Result requestAppUsagePermission(_RequestAppUsagePermission value),
    Result requestBatteryPermission(_RequestBatteryPermission value),
    Result startAppRedirect(_StartAppRedirect value),
    @required Result orElse(),
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
  _$AddOrRemoveWeekDayCopyWith<_AddOrRemoveWeekDay> get copyWith;
}

abstract class _$UpdateTimeCopyWith<$Res> {
  factory _$UpdateTimeCopyWith(
          _UpdateTime value, $Res Function(_UpdateTime) then) =
      __$UpdateTimeCopyWithImpl<$Res>;
  $Res call({String startTime, String endTime});
}

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

class _$_UpdateTime implements _UpdateTime {
  const _$_UpdateTime(this.startTime, this.endTime)
      : assert(startTime != null),
        assert(endTime != null);

  @override
  final String startTime;
  @override
  final String endTime;

  @override
  String toString() {
    return 'AppRedirectEvent.updateTime(startTime: $startTime, endTime: $endTime)';
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

  @override
  _$UpdateTimeCopyWith<_UpdateTime> get copyWith =>
      __$UpdateTimeCopyWithImpl<_UpdateTime>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialize(int startStep),
    @required Result changeStep(int currentStep),
    @required Result addOrRemoveWeekDay(int weekDay),
    @required Result updateTime(String startTime, String endTime),
    @required Result checkPermissions(),
    @required Result requestAppUsagePermission(),
    @required Result requestBatteryPermission(),
    @required Result startAppRedirect(),
  }) {
    assert(initialize != null);
    assert(changeStep != null);
    assert(addOrRemoveWeekDay != null);
    assert(updateTime != null);
    assert(checkPermissions != null);
    assert(requestAppUsagePermission != null);
    assert(requestBatteryPermission != null);
    assert(startAppRedirect != null);
    return updateTime(startTime, endTime);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(int startStep),
    Result changeStep(int currentStep),
    Result addOrRemoveWeekDay(int weekDay),
    Result updateTime(String startTime, String endTime),
    Result checkPermissions(),
    Result requestAppUsagePermission(),
    Result requestBatteryPermission(),
    Result startAppRedirect(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateTime != null) {
      return updateTime(startTime, endTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialize(_Initialize value),
    @required Result changeStep(_ChangeStep value),
    @required Result addOrRemoveWeekDay(_AddOrRemoveWeekDay value),
    @required Result updateTime(_UpdateTime value),
    @required Result checkPermissions(_CheckPermission value),
    @required
        Result requestAppUsagePermission(_RequestAppUsagePermission value),
    @required Result requestBatteryPermission(_RequestBatteryPermission value),
    @required Result startAppRedirect(_StartAppRedirect value),
  }) {
    assert(initialize != null);
    assert(changeStep != null);
    assert(addOrRemoveWeekDay != null);
    assert(updateTime != null);
    assert(checkPermissions != null);
    assert(requestAppUsagePermission != null);
    assert(requestBatteryPermission != null);
    assert(startAppRedirect != null);
    return updateTime(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(_Initialize value),
    Result changeStep(_ChangeStep value),
    Result addOrRemoveWeekDay(_AddOrRemoveWeekDay value),
    Result updateTime(_UpdateTime value),
    Result checkPermissions(_CheckPermission value),
    Result requestAppUsagePermission(_RequestAppUsagePermission value),
    Result requestBatteryPermission(_RequestBatteryPermission value),
    Result startAppRedirect(_StartAppRedirect value),
    @required Result orElse(),
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
  _$UpdateTimeCopyWith<_UpdateTime> get copyWith;
}

abstract class _$CheckPermissionCopyWith<$Res> {
  factory _$CheckPermissionCopyWith(
          _CheckPermission value, $Res Function(_CheckPermission) then) =
      __$CheckPermissionCopyWithImpl<$Res>;
}

class __$CheckPermissionCopyWithImpl<$Res>
    extends _$AppRedirectEventCopyWithImpl<$Res>
    implements _$CheckPermissionCopyWith<$Res> {
  __$CheckPermissionCopyWithImpl(
      _CheckPermission _value, $Res Function(_CheckPermission) _then)
      : super(_value, (v) => _then(v as _CheckPermission));

  @override
  _CheckPermission get _value => super._value as _CheckPermission;
}

class _$_CheckPermission implements _CheckPermission {
  const _$_CheckPermission();

  @override
  String toString() {
    return 'AppRedirectEvent.checkPermissions()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CheckPermission);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialize(int startStep),
    @required Result changeStep(int currentStep),
    @required Result addOrRemoveWeekDay(int weekDay),
    @required Result updateTime(String startTime, String endTime),
    @required Result checkPermissions(),
    @required Result requestAppUsagePermission(),
    @required Result requestBatteryPermission(),
    @required Result startAppRedirect(),
  }) {
    assert(initialize != null);
    assert(changeStep != null);
    assert(addOrRemoveWeekDay != null);
    assert(updateTime != null);
    assert(checkPermissions != null);
    assert(requestAppUsagePermission != null);
    assert(requestBatteryPermission != null);
    assert(startAppRedirect != null);
    return checkPermissions();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(int startStep),
    Result changeStep(int currentStep),
    Result addOrRemoveWeekDay(int weekDay),
    Result updateTime(String startTime, String endTime),
    Result checkPermissions(),
    Result requestAppUsagePermission(),
    Result requestBatteryPermission(),
    Result startAppRedirect(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (checkPermissions != null) {
      return checkPermissions();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialize(_Initialize value),
    @required Result changeStep(_ChangeStep value),
    @required Result addOrRemoveWeekDay(_AddOrRemoveWeekDay value),
    @required Result updateTime(_UpdateTime value),
    @required Result checkPermissions(_CheckPermission value),
    @required
        Result requestAppUsagePermission(_RequestAppUsagePermission value),
    @required Result requestBatteryPermission(_RequestBatteryPermission value),
    @required Result startAppRedirect(_StartAppRedirect value),
  }) {
    assert(initialize != null);
    assert(changeStep != null);
    assert(addOrRemoveWeekDay != null);
    assert(updateTime != null);
    assert(checkPermissions != null);
    assert(requestAppUsagePermission != null);
    assert(requestBatteryPermission != null);
    assert(startAppRedirect != null);
    return checkPermissions(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(_Initialize value),
    Result changeStep(_ChangeStep value),
    Result addOrRemoveWeekDay(_AddOrRemoveWeekDay value),
    Result updateTime(_UpdateTime value),
    Result checkPermissions(_CheckPermission value),
    Result requestAppUsagePermission(_RequestAppUsagePermission value),
    Result requestBatteryPermission(_RequestBatteryPermission value),
    Result startAppRedirect(_StartAppRedirect value),
    @required Result orElse(),
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

abstract class _$RequestAppUsagePermissionCopyWith<$Res> {
  factory _$RequestAppUsagePermissionCopyWith(_RequestAppUsagePermission value,
          $Res Function(_RequestAppUsagePermission) then) =
      __$RequestAppUsagePermissionCopyWithImpl<$Res>;
}

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

class _$_RequestAppUsagePermission implements _RequestAppUsagePermission {
  const _$_RequestAppUsagePermission();

  @override
  String toString() {
    return 'AppRedirectEvent.requestAppUsagePermission()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _RequestAppUsagePermission);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialize(int startStep),
    @required Result changeStep(int currentStep),
    @required Result addOrRemoveWeekDay(int weekDay),
    @required Result updateTime(String startTime, String endTime),
    @required Result checkPermissions(),
    @required Result requestAppUsagePermission(),
    @required Result requestBatteryPermission(),
    @required Result startAppRedirect(),
  }) {
    assert(initialize != null);
    assert(changeStep != null);
    assert(addOrRemoveWeekDay != null);
    assert(updateTime != null);
    assert(checkPermissions != null);
    assert(requestAppUsagePermission != null);
    assert(requestBatteryPermission != null);
    assert(startAppRedirect != null);
    return requestAppUsagePermission();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(int startStep),
    Result changeStep(int currentStep),
    Result addOrRemoveWeekDay(int weekDay),
    Result updateTime(String startTime, String endTime),
    Result checkPermissions(),
    Result requestAppUsagePermission(),
    Result requestBatteryPermission(),
    Result startAppRedirect(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (requestAppUsagePermission != null) {
      return requestAppUsagePermission();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialize(_Initialize value),
    @required Result changeStep(_ChangeStep value),
    @required Result addOrRemoveWeekDay(_AddOrRemoveWeekDay value),
    @required Result updateTime(_UpdateTime value),
    @required Result checkPermissions(_CheckPermission value),
    @required
        Result requestAppUsagePermission(_RequestAppUsagePermission value),
    @required Result requestBatteryPermission(_RequestBatteryPermission value),
    @required Result startAppRedirect(_StartAppRedirect value),
  }) {
    assert(initialize != null);
    assert(changeStep != null);
    assert(addOrRemoveWeekDay != null);
    assert(updateTime != null);
    assert(checkPermissions != null);
    assert(requestAppUsagePermission != null);
    assert(requestBatteryPermission != null);
    assert(startAppRedirect != null);
    return requestAppUsagePermission(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(_Initialize value),
    Result changeStep(_ChangeStep value),
    Result addOrRemoveWeekDay(_AddOrRemoveWeekDay value),
    Result updateTime(_UpdateTime value),
    Result checkPermissions(_CheckPermission value),
    Result requestAppUsagePermission(_RequestAppUsagePermission value),
    Result requestBatteryPermission(_RequestBatteryPermission value),
    Result startAppRedirect(_StartAppRedirect value),
    @required Result orElse(),
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

abstract class _$RequestBatteryPermissionCopyWith<$Res> {
  factory _$RequestBatteryPermissionCopyWith(_RequestBatteryPermission value,
          $Res Function(_RequestBatteryPermission) then) =
      __$RequestBatteryPermissionCopyWithImpl<$Res>;
}

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

class _$_RequestBatteryPermission implements _RequestBatteryPermission {
  const _$_RequestBatteryPermission();

  @override
  String toString() {
    return 'AppRedirectEvent.requestBatteryPermission()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _RequestBatteryPermission);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialize(int startStep),
    @required Result changeStep(int currentStep),
    @required Result addOrRemoveWeekDay(int weekDay),
    @required Result updateTime(String startTime, String endTime),
    @required Result checkPermissions(),
    @required Result requestAppUsagePermission(),
    @required Result requestBatteryPermission(),
    @required Result startAppRedirect(),
  }) {
    assert(initialize != null);
    assert(changeStep != null);
    assert(addOrRemoveWeekDay != null);
    assert(updateTime != null);
    assert(checkPermissions != null);
    assert(requestAppUsagePermission != null);
    assert(requestBatteryPermission != null);
    assert(startAppRedirect != null);
    return requestBatteryPermission();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(int startStep),
    Result changeStep(int currentStep),
    Result addOrRemoveWeekDay(int weekDay),
    Result updateTime(String startTime, String endTime),
    Result checkPermissions(),
    Result requestAppUsagePermission(),
    Result requestBatteryPermission(),
    Result startAppRedirect(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (requestBatteryPermission != null) {
      return requestBatteryPermission();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialize(_Initialize value),
    @required Result changeStep(_ChangeStep value),
    @required Result addOrRemoveWeekDay(_AddOrRemoveWeekDay value),
    @required Result updateTime(_UpdateTime value),
    @required Result checkPermissions(_CheckPermission value),
    @required
        Result requestAppUsagePermission(_RequestAppUsagePermission value),
    @required Result requestBatteryPermission(_RequestBatteryPermission value),
    @required Result startAppRedirect(_StartAppRedirect value),
  }) {
    assert(initialize != null);
    assert(changeStep != null);
    assert(addOrRemoveWeekDay != null);
    assert(updateTime != null);
    assert(checkPermissions != null);
    assert(requestAppUsagePermission != null);
    assert(requestBatteryPermission != null);
    assert(startAppRedirect != null);
    return requestBatteryPermission(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(_Initialize value),
    Result changeStep(_ChangeStep value),
    Result addOrRemoveWeekDay(_AddOrRemoveWeekDay value),
    Result updateTime(_UpdateTime value),
    Result checkPermissions(_CheckPermission value),
    Result requestAppUsagePermission(_RequestAppUsagePermission value),
    Result requestBatteryPermission(_RequestBatteryPermission value),
    Result startAppRedirect(_StartAppRedirect value),
    @required Result orElse(),
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

abstract class _$StartAppRedirectCopyWith<$Res> {
  factory _$StartAppRedirectCopyWith(
          _StartAppRedirect value, $Res Function(_StartAppRedirect) then) =
      __$StartAppRedirectCopyWithImpl<$Res>;
}

class __$StartAppRedirectCopyWithImpl<$Res>
    extends _$AppRedirectEventCopyWithImpl<$Res>
    implements _$StartAppRedirectCopyWith<$Res> {
  __$StartAppRedirectCopyWithImpl(
      _StartAppRedirect _value, $Res Function(_StartAppRedirect) _then)
      : super(_value, (v) => _then(v as _StartAppRedirect));

  @override
  _StartAppRedirect get _value => super._value as _StartAppRedirect;
}

class _$_StartAppRedirect implements _StartAppRedirect {
  const _$_StartAppRedirect();

  @override
  String toString() {
    return 'AppRedirectEvent.startAppRedirect()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _StartAppRedirect);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialize(int startStep),
    @required Result changeStep(int currentStep),
    @required Result addOrRemoveWeekDay(int weekDay),
    @required Result updateTime(String startTime, String endTime),
    @required Result checkPermissions(),
    @required Result requestAppUsagePermission(),
    @required Result requestBatteryPermission(),
    @required Result startAppRedirect(),
  }) {
    assert(initialize != null);
    assert(changeStep != null);
    assert(addOrRemoveWeekDay != null);
    assert(updateTime != null);
    assert(checkPermissions != null);
    assert(requestAppUsagePermission != null);
    assert(requestBatteryPermission != null);
    assert(startAppRedirect != null);
    return startAppRedirect();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(int startStep),
    Result changeStep(int currentStep),
    Result addOrRemoveWeekDay(int weekDay),
    Result updateTime(String startTime, String endTime),
    Result checkPermissions(),
    Result requestAppUsagePermission(),
    Result requestBatteryPermission(),
    Result startAppRedirect(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (startAppRedirect != null) {
      return startAppRedirect();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialize(_Initialize value),
    @required Result changeStep(_ChangeStep value),
    @required Result addOrRemoveWeekDay(_AddOrRemoveWeekDay value),
    @required Result updateTime(_UpdateTime value),
    @required Result checkPermissions(_CheckPermission value),
    @required
        Result requestAppUsagePermission(_RequestAppUsagePermission value),
    @required Result requestBatteryPermission(_RequestBatteryPermission value),
    @required Result startAppRedirect(_StartAppRedirect value),
  }) {
    assert(initialize != null);
    assert(changeStep != null);
    assert(addOrRemoveWeekDay != null);
    assert(updateTime != null);
    assert(checkPermissions != null);
    assert(requestAppUsagePermission != null);
    assert(requestBatteryPermission != null);
    assert(startAppRedirect != null);
    return startAppRedirect(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(_Initialize value),
    Result changeStep(_ChangeStep value),
    Result addOrRemoveWeekDay(_AddOrRemoveWeekDay value),
    Result updateTime(_UpdateTime value),
    Result checkPermissions(_CheckPermission value),
    Result requestAppUsagePermission(_RequestAppUsagePermission value),
    Result requestBatteryPermission(_RequestBatteryPermission value),
    Result startAppRedirect(_StartAppRedirect value),
    @required Result orElse(),
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
      PermissionState batteryPermission}) {
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
    );
  }
}

// ignore: unused_element
const $AppRedirectState = _$AppRedirectStateTearOff();

mixin _$AppRedirectState {
  int get totalSteps;
  int get currentStep;
  List<String> get blockedPackages;
  String get startTime;
  String get endTime;
  KtList<int> get selectedWeekDays;
  Failure get failure;
  PermissionState get appUsagePermission;
  PermissionState get batteryPermission;

  $AppRedirectStateCopyWith<AppRedirectState> get copyWith;
}

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
      PermissionState batteryPermission});

  $FailureCopyWith<$Res> get failure;
}

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
      PermissionState batteryPermission});

  @override
  $FailureCopyWith<$Res> get failure;
}

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
    ));
  }
}

class _$_AppRedirectState implements _AppRedirectState {
  const _$_AppRedirectState(
      {this.totalSteps,
      this.currentStep,
      this.blockedPackages,
      this.startTime,
      this.endTime,
      this.selectedWeekDays,
      this.failure,
      this.appUsagePermission,
      this.batteryPermission});

  @override
  final int totalSteps;
  @override
  final int currentStep;
  @override
  final List<String> blockedPackages;
  @override
  final String startTime;
  @override
  final String endTime;
  @override
  final KtList<int> selectedWeekDays;
  @override
  final Failure failure;
  @override
  final PermissionState appUsagePermission;
  @override
  final PermissionState batteryPermission;

  @override
  String toString() {
    return 'AppRedirectState(totalSteps: $totalSteps, currentStep: $currentStep, blockedPackages: $blockedPackages, startTime: $startTime, endTime: $endTime, selectedWeekDays: $selectedWeekDays, failure: $failure, appUsagePermission: $appUsagePermission, batteryPermission: $batteryPermission)';
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
                    .equals(other.batteryPermission, batteryPermission)));
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
      const DeepCollectionEquality().hash(batteryPermission);

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
      PermissionState batteryPermission}) = _$_AppRedirectState;

  @override
  int get totalSteps;
  @override
  int get currentStep;
  @override
  List<String> get blockedPackages;
  @override
  String get startTime;
  @override
  String get endTime;
  @override
  KtList<int> get selectedWeekDays;
  @override
  Failure get failure;
  @override
  PermissionState get appUsagePermission;
  @override
  PermissionState get batteryPermission;
  @override
  _$AppRedirectStateCopyWith<_AppRedirectState> get copyWith;
}
