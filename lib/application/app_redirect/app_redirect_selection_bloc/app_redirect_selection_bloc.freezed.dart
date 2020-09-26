// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'app_redirect_selection_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AppRedirectSelectionEventTearOff {
  const _$AppRedirectSelectionEventTearOff();

// ignore: unused_element
  _UpdateSelectedPackages updateSelectedPackages(List<String> packages) {
    return _UpdateSelectedPackages(
      packages,
    );
  }

// ignore: unused_element
  _SelectOrRemovePackage selectOrRemovePackage(String package) {
    return _SelectOrRemovePackage(
      package,
    );
  }
}

// ignore: unused_element
const $AppRedirectSelectionEvent = _$AppRedirectSelectionEventTearOff();

mixin _$AppRedirectSelectionEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result updateSelectedPackages(List<String> packages),
    @required Result selectOrRemovePackage(String package),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result updateSelectedPackages(List<String> packages),
    Result selectOrRemovePackage(String package),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result updateSelectedPackages(_UpdateSelectedPackages value),
    @required Result selectOrRemovePackage(_SelectOrRemovePackage value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result updateSelectedPackages(_UpdateSelectedPackages value),
    Result selectOrRemovePackage(_SelectOrRemovePackage value),
    @required Result orElse(),
  });
}

abstract class $AppRedirectSelectionEventCopyWith<$Res> {
  factory $AppRedirectSelectionEventCopyWith(AppRedirectSelectionEvent value,
          $Res Function(AppRedirectSelectionEvent) then) =
      _$AppRedirectSelectionEventCopyWithImpl<$Res>;
}

class _$AppRedirectSelectionEventCopyWithImpl<$Res>
    implements $AppRedirectSelectionEventCopyWith<$Res> {
  _$AppRedirectSelectionEventCopyWithImpl(this._value, this._then);

  final AppRedirectSelectionEvent _value;
  // ignore: unused_field
  final $Res Function(AppRedirectSelectionEvent) _then;
}

abstract class _$UpdateSelectedPackagesCopyWith<$Res> {
  factory _$UpdateSelectedPackagesCopyWith(_UpdateSelectedPackages value,
          $Res Function(_UpdateSelectedPackages) then) =
      __$UpdateSelectedPackagesCopyWithImpl<$Res>;
  $Res call({List<String> packages});
}

class __$UpdateSelectedPackagesCopyWithImpl<$Res>
    extends _$AppRedirectSelectionEventCopyWithImpl<$Res>
    implements _$UpdateSelectedPackagesCopyWith<$Res> {
  __$UpdateSelectedPackagesCopyWithImpl(_UpdateSelectedPackages _value,
      $Res Function(_UpdateSelectedPackages) _then)
      : super(_value, (v) => _then(v as _UpdateSelectedPackages));

  @override
  _UpdateSelectedPackages get _value => super._value as _UpdateSelectedPackages;

  @override
  $Res call({
    Object packages = freezed,
  }) {
    return _then(_UpdateSelectedPackages(
      packages == freezed ? _value.packages : packages as List<String>,
    ));
  }
}

class _$_UpdateSelectedPackages implements _UpdateSelectedPackages {
  const _$_UpdateSelectedPackages(this.packages) : assert(packages != null);

  @override
  final List<String> packages;

  @override
  String toString() {
    return 'AppRedirectSelectionEvent.updateSelectedPackages(packages: $packages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateSelectedPackages &&
            (identical(other.packages, packages) ||
                const DeepCollectionEquality()
                    .equals(other.packages, packages)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(packages);

  @override
  _$UpdateSelectedPackagesCopyWith<_UpdateSelectedPackages> get copyWith =>
      __$UpdateSelectedPackagesCopyWithImpl<_UpdateSelectedPackages>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result updateSelectedPackages(List<String> packages),
    @required Result selectOrRemovePackage(String package),
  }) {
    assert(updateSelectedPackages != null);
    assert(selectOrRemovePackage != null);
    return updateSelectedPackages(packages);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result updateSelectedPackages(List<String> packages),
    Result selectOrRemovePackage(String package),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateSelectedPackages != null) {
      return updateSelectedPackages(packages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result updateSelectedPackages(_UpdateSelectedPackages value),
    @required Result selectOrRemovePackage(_SelectOrRemovePackage value),
  }) {
    assert(updateSelectedPackages != null);
    assert(selectOrRemovePackage != null);
    return updateSelectedPackages(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result updateSelectedPackages(_UpdateSelectedPackages value),
    Result selectOrRemovePackage(_SelectOrRemovePackage value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateSelectedPackages != null) {
      return updateSelectedPackages(this);
    }
    return orElse();
  }
}

abstract class _UpdateSelectedPackages implements AppRedirectSelectionEvent {
  const factory _UpdateSelectedPackages(List<String> packages) =
      _$_UpdateSelectedPackages;

  List<String> get packages;
  _$UpdateSelectedPackagesCopyWith<_UpdateSelectedPackages> get copyWith;
}

abstract class _$SelectOrRemovePackageCopyWith<$Res> {
  factory _$SelectOrRemovePackageCopyWith(_SelectOrRemovePackage value,
          $Res Function(_SelectOrRemovePackage) then) =
      __$SelectOrRemovePackageCopyWithImpl<$Res>;
  $Res call({String package});
}

class __$SelectOrRemovePackageCopyWithImpl<$Res>
    extends _$AppRedirectSelectionEventCopyWithImpl<$Res>
    implements _$SelectOrRemovePackageCopyWith<$Res> {
  __$SelectOrRemovePackageCopyWithImpl(_SelectOrRemovePackage _value,
      $Res Function(_SelectOrRemovePackage) _then)
      : super(_value, (v) => _then(v as _SelectOrRemovePackage));

  @override
  _SelectOrRemovePackage get _value => super._value as _SelectOrRemovePackage;

  @override
  $Res call({
    Object package = freezed,
  }) {
    return _then(_SelectOrRemovePackage(
      package == freezed ? _value.package : package as String,
    ));
  }
}

class _$_SelectOrRemovePackage implements _SelectOrRemovePackage {
  const _$_SelectOrRemovePackage(this.package) : assert(package != null);

  @override
  final String package;

  @override
  String toString() {
    return 'AppRedirectSelectionEvent.selectOrRemovePackage(package: $package)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SelectOrRemovePackage &&
            (identical(other.package, package) ||
                const DeepCollectionEquality().equals(other.package, package)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(package);

  @override
  _$SelectOrRemovePackageCopyWith<_SelectOrRemovePackage> get copyWith =>
      __$SelectOrRemovePackageCopyWithImpl<_SelectOrRemovePackage>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result updateSelectedPackages(List<String> packages),
    @required Result selectOrRemovePackage(String package),
  }) {
    assert(updateSelectedPackages != null);
    assert(selectOrRemovePackage != null);
    return selectOrRemovePackage(package);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result updateSelectedPackages(List<String> packages),
    Result selectOrRemovePackage(String package),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (selectOrRemovePackage != null) {
      return selectOrRemovePackage(package);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result updateSelectedPackages(_UpdateSelectedPackages value),
    @required Result selectOrRemovePackage(_SelectOrRemovePackage value),
  }) {
    assert(updateSelectedPackages != null);
    assert(selectOrRemovePackage != null);
    return selectOrRemovePackage(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result updateSelectedPackages(_UpdateSelectedPackages value),
    Result selectOrRemovePackage(_SelectOrRemovePackage value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (selectOrRemovePackage != null) {
      return selectOrRemovePackage(this);
    }
    return orElse();
  }
}

abstract class _SelectOrRemovePackage implements AppRedirectSelectionEvent {
  const factory _SelectOrRemovePackage(String package) =
      _$_SelectOrRemovePackage;

  String get package;
  _$SelectOrRemovePackageCopyWith<_SelectOrRemovePackage> get copyWith;
}

class _$AppRedirectSelectionStateTearOff {
  const _$AppRedirectSelectionStateTearOff();

// ignore: unused_element
  _AppRedirectSelectionState call({KtList<String> selectedPackages}) {
    return _AppRedirectSelectionState(
      selectedPackages: selectedPackages,
    );
  }
}

// ignore: unused_element
const $AppRedirectSelectionState = _$AppRedirectSelectionStateTearOff();

mixin _$AppRedirectSelectionState {
  KtList<String> get selectedPackages;

  $AppRedirectSelectionStateCopyWith<AppRedirectSelectionState> get copyWith;
}

abstract class $AppRedirectSelectionStateCopyWith<$Res> {
  factory $AppRedirectSelectionStateCopyWith(AppRedirectSelectionState value,
          $Res Function(AppRedirectSelectionState) then) =
      _$AppRedirectSelectionStateCopyWithImpl<$Res>;
  $Res call({KtList<String> selectedPackages});
}

class _$AppRedirectSelectionStateCopyWithImpl<$Res>
    implements $AppRedirectSelectionStateCopyWith<$Res> {
  _$AppRedirectSelectionStateCopyWithImpl(this._value, this._then);

  final AppRedirectSelectionState _value;
  // ignore: unused_field
  final $Res Function(AppRedirectSelectionState) _then;

  @override
  $Res call({
    Object selectedPackages = freezed,
  }) {
    return _then(_value.copyWith(
      selectedPackages: selectedPackages == freezed
          ? _value.selectedPackages
          : selectedPackages as KtList<String>,
    ));
  }
}

abstract class _$AppRedirectSelectionStateCopyWith<$Res>
    implements $AppRedirectSelectionStateCopyWith<$Res> {
  factory _$AppRedirectSelectionStateCopyWith(_AppRedirectSelectionState value,
          $Res Function(_AppRedirectSelectionState) then) =
      __$AppRedirectSelectionStateCopyWithImpl<$Res>;
  @override
  $Res call({KtList<String> selectedPackages});
}

class __$AppRedirectSelectionStateCopyWithImpl<$Res>
    extends _$AppRedirectSelectionStateCopyWithImpl<$Res>
    implements _$AppRedirectSelectionStateCopyWith<$Res> {
  __$AppRedirectSelectionStateCopyWithImpl(_AppRedirectSelectionState _value,
      $Res Function(_AppRedirectSelectionState) _then)
      : super(_value, (v) => _then(v as _AppRedirectSelectionState));

  @override
  _AppRedirectSelectionState get _value =>
      super._value as _AppRedirectSelectionState;

  @override
  $Res call({
    Object selectedPackages = freezed,
  }) {
    return _then(_AppRedirectSelectionState(
      selectedPackages: selectedPackages == freezed
          ? _value.selectedPackages
          : selectedPackages as KtList<String>,
    ));
  }
}

class _$_AppRedirectSelectionState implements _AppRedirectSelectionState {
  const _$_AppRedirectSelectionState({this.selectedPackages});

  @override
  final KtList<String> selectedPackages;

  @override
  String toString() {
    return 'AppRedirectSelectionState(selectedPackages: $selectedPackages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AppRedirectSelectionState &&
            (identical(other.selectedPackages, selectedPackages) ||
                const DeepCollectionEquality()
                    .equals(other.selectedPackages, selectedPackages)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(selectedPackages);

  @override
  _$AppRedirectSelectionStateCopyWith<_AppRedirectSelectionState>
      get copyWith =>
          __$AppRedirectSelectionStateCopyWithImpl<_AppRedirectSelectionState>(
              this, _$identity);
}

abstract class _AppRedirectSelectionState implements AppRedirectSelectionState {
  const factory _AppRedirectSelectionState({KtList<String> selectedPackages}) =
      _$_AppRedirectSelectionState;

  @override
  KtList<String> get selectedPackages;
  @override
  _$AppRedirectSelectionStateCopyWith<_AppRedirectSelectionState> get copyWith;
}
