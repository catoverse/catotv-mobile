// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'app_redirect_selection_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
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

/// @nodoc
// ignore: unused_element
const $AppRedirectSelectionEvent = _$AppRedirectSelectionEventTearOff();

/// @nodoc
mixin _$AppRedirectSelectionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult updateSelectedPackages(List<String> packages),
    @required TResult selectOrRemovePackage(String package),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult updateSelectedPackages(List<String> packages),
    TResult selectOrRemovePackage(String package),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult updateSelectedPackages(_UpdateSelectedPackages value),
    @required TResult selectOrRemovePackage(_SelectOrRemovePackage value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult updateSelectedPackages(_UpdateSelectedPackages value),
    TResult selectOrRemovePackage(_SelectOrRemovePackage value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $AppRedirectSelectionEventCopyWith<$Res> {
  factory $AppRedirectSelectionEventCopyWith(AppRedirectSelectionEvent value,
          $Res Function(AppRedirectSelectionEvent) then) =
      _$AppRedirectSelectionEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppRedirectSelectionEventCopyWithImpl<$Res>
    implements $AppRedirectSelectionEventCopyWith<$Res> {
  _$AppRedirectSelectionEventCopyWithImpl(this._value, this._then);

  final AppRedirectSelectionEvent _value;
  // ignore: unused_field
  final $Res Function(AppRedirectSelectionEvent) _then;
}

/// @nodoc
abstract class _$UpdateSelectedPackagesCopyWith<$Res> {
  factory _$UpdateSelectedPackagesCopyWith(_UpdateSelectedPackages value,
          $Res Function(_UpdateSelectedPackages) then) =
      __$UpdateSelectedPackagesCopyWithImpl<$Res>;
  $Res call({List<String> packages});
}

/// @nodoc
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

/// @nodoc
class _$_UpdateSelectedPackages
    with DiagnosticableTreeMixin
    implements _UpdateSelectedPackages {
  const _$_UpdateSelectedPackages(this.packages) : assert(packages != null);

  @override
  final List<String> packages;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppRedirectSelectionEvent.updateSelectedPackages(packages: $packages)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'AppRedirectSelectionEvent.updateSelectedPackages'))
      ..add(DiagnosticsProperty('packages', packages));
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

  @JsonKey(ignore: true)
  @override
  _$UpdateSelectedPackagesCopyWith<_UpdateSelectedPackages> get copyWith =>
      __$UpdateSelectedPackagesCopyWithImpl<_UpdateSelectedPackages>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult updateSelectedPackages(List<String> packages),
    @required TResult selectOrRemovePackage(String package),
  }) {
    assert(updateSelectedPackages != null);
    assert(selectOrRemovePackage != null);
    return updateSelectedPackages(packages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult updateSelectedPackages(List<String> packages),
    TResult selectOrRemovePackage(String package),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateSelectedPackages != null) {
      return updateSelectedPackages(packages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult updateSelectedPackages(_UpdateSelectedPackages value),
    @required TResult selectOrRemovePackage(_SelectOrRemovePackage value),
  }) {
    assert(updateSelectedPackages != null);
    assert(selectOrRemovePackage != null);
    return updateSelectedPackages(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult updateSelectedPackages(_UpdateSelectedPackages value),
    TResult selectOrRemovePackage(_SelectOrRemovePackage value),
    @required TResult orElse(),
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
  @JsonKey(ignore: true)
  _$UpdateSelectedPackagesCopyWith<_UpdateSelectedPackages> get copyWith;
}

/// @nodoc
abstract class _$SelectOrRemovePackageCopyWith<$Res> {
  factory _$SelectOrRemovePackageCopyWith(_SelectOrRemovePackage value,
          $Res Function(_SelectOrRemovePackage) then) =
      __$SelectOrRemovePackageCopyWithImpl<$Res>;
  $Res call({String package});
}

/// @nodoc
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

/// @nodoc
class _$_SelectOrRemovePackage
    with DiagnosticableTreeMixin
    implements _SelectOrRemovePackage {
  const _$_SelectOrRemovePackage(this.package) : assert(package != null);

  @override
  final String package;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppRedirectSelectionEvent.selectOrRemovePackage(package: $package)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'AppRedirectSelectionEvent.selectOrRemovePackage'))
      ..add(DiagnosticsProperty('package', package));
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

  @JsonKey(ignore: true)
  @override
  _$SelectOrRemovePackageCopyWith<_SelectOrRemovePackage> get copyWith =>
      __$SelectOrRemovePackageCopyWithImpl<_SelectOrRemovePackage>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult updateSelectedPackages(List<String> packages),
    @required TResult selectOrRemovePackage(String package),
  }) {
    assert(updateSelectedPackages != null);
    assert(selectOrRemovePackage != null);
    return selectOrRemovePackage(package);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult updateSelectedPackages(List<String> packages),
    TResult selectOrRemovePackage(String package),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (selectOrRemovePackage != null) {
      return selectOrRemovePackage(package);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult updateSelectedPackages(_UpdateSelectedPackages value),
    @required TResult selectOrRemovePackage(_SelectOrRemovePackage value),
  }) {
    assert(updateSelectedPackages != null);
    assert(selectOrRemovePackage != null);
    return selectOrRemovePackage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult updateSelectedPackages(_UpdateSelectedPackages value),
    TResult selectOrRemovePackage(_SelectOrRemovePackage value),
    @required TResult orElse(),
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
  @JsonKey(ignore: true)
  _$SelectOrRemovePackageCopyWith<_SelectOrRemovePackage> get copyWith;
}

/// @nodoc
class _$AppRedirectSelectionStateTearOff {
  const _$AppRedirectSelectionStateTearOff();

// ignore: unused_element
  _AppRedirectSelectionState call({KtList<String> selectedPackages}) {
    return _AppRedirectSelectionState(
      selectedPackages: selectedPackages,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AppRedirectSelectionState = _$AppRedirectSelectionStateTearOff();

/// @nodoc
mixin _$AppRedirectSelectionState {
  KtList<String> get selectedPackages;

  @JsonKey(ignore: true)
  $AppRedirectSelectionStateCopyWith<AppRedirectSelectionState> get copyWith;
}

/// @nodoc
abstract class $AppRedirectSelectionStateCopyWith<$Res> {
  factory $AppRedirectSelectionStateCopyWith(AppRedirectSelectionState value,
          $Res Function(AppRedirectSelectionState) then) =
      _$AppRedirectSelectionStateCopyWithImpl<$Res>;
  $Res call({KtList<String> selectedPackages});
}

/// @nodoc
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

/// @nodoc
abstract class _$AppRedirectSelectionStateCopyWith<$Res>
    implements $AppRedirectSelectionStateCopyWith<$Res> {
  factory _$AppRedirectSelectionStateCopyWith(_AppRedirectSelectionState value,
          $Res Function(_AppRedirectSelectionState) then) =
      __$AppRedirectSelectionStateCopyWithImpl<$Res>;
  @override
  $Res call({KtList<String> selectedPackages});
}

/// @nodoc
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

/// @nodoc
class _$_AppRedirectSelectionState
    with DiagnosticableTreeMixin
    implements _AppRedirectSelectionState {
  const _$_AppRedirectSelectionState({this.selectedPackages});

  @override
  final KtList<String> selectedPackages;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppRedirectSelectionState(selectedPackages: $selectedPackages)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppRedirectSelectionState'))
      ..add(DiagnosticsProperty('selectedPackages', selectedPackages));
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

  @JsonKey(ignore: true)
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
  @JsonKey(ignore: true)
  _$AppRedirectSelectionStateCopyWith<_AppRedirectSelectionState> get copyWith;
}
