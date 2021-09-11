// Mocks generated by Mockito 5.0.10 from annotations
// in feed/test/helpers/test_helpers.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;
import 'dart:ui' as _i17;

import 'package:feed/core/enums/connectivity_status.dart' as _i7;
import 'package:feed/core/models/app_models.dart' as _i2;
import 'package:feed/core/services/explode_service.dart' as _i8;
import 'package:feed/core/services/user_service.dart' as _i3;
import 'package:feed/remote/api/api_service.dart' as _i5;
import 'package:feed/remote/connectivity/connectivity_service.dart' as _i6;
import 'package:flutter/src/animation/curves.dart' as _i12;
import 'package:flutter/src/widgets/framework.dart' as _i10;
import 'package:flutter/src/widgets/navigator.dart' as _i11;
import 'package:get/get_instance/src/bindings_interface.dart' as _i13;
import 'package:get/get_navigation/src/routes/transitions_type.dart' as _i14;
import 'package:mockito/mockito.dart' as _i1;
import 'package:stacked_services/src/bottom_sheet/bottom_sheet_service.dart'
    as _i15;
import 'package:stacked_services/src/models/overlay_response.dart' as _i16;
import 'package:stacked_services/src/navigation_service.dart' as _i9;
import 'package:stacked_services/src/snackbar/snackbar_config.dart' as _i19;
import 'package:stacked_services/src/snackbar/snackbar_service.dart' as _i18;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: comment_references
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis

class _FakeUser extends _i1.Fake implements _i2.User {}

/// A class which mocks [UserService].
///
/// See the documentation for Mockito's code generation for more information.
class MockUserService extends _i1.Mock implements _i3.UserService {
  @override
  _i2.User get currentUser =>
      (super.noSuchMethod(Invocation.getter(#currentUser),
          returnValue: _FakeUser()) as _i2.User);
  @override
  bool get hasLoggedInUser => (super
          .noSuchMethod(Invocation.getter(#hasLoggedInUser), returnValue: false)
      as bool);
  @override
  _i4.Future<bool> loginWithGoogle() =>
      (super.noSuchMethod(Invocation.method(#loginWithGoogle, []),
          returnValue: Future<bool>.value(false)) as _i4.Future<bool>);
  @override
  _i4.Future<bool> syncUser({_i2.User? user}) =>
      (super.noSuchMethod(Invocation.method(#syncUser, [], {#user: user}),
          returnValue: Future<bool>.value(false)) as _i4.Future<bool>);
  @override
  _i4.Future<bool> isUserProfileExists() =>
      (super.noSuchMethod(Invocation.method(#isUserProfileExists, []),
          returnValue: Future<bool>.value(false)) as _i4.Future<bool>);
  @override
  _i4.Future<bool> createProfile({List<String>? topicIds}) =>
      (super.noSuchMethod(
          Invocation.method(#createProfile, [], {#topicIds: topicIds}),
          returnValue: Future<bool>.value(false)) as _i4.Future<bool>);
}

/// A class which mocks [APIService].
///
/// See the documentation for Mockito's code generation for more information.
class MockAPIService extends _i1.Mock implements _i5.APIService {
  @override
  _i4.Future<dynamic> isUpdateRequired() =>
      (super.noSuchMethod(Invocation.method(#isUpdateRequired, []),
          returnValue: Future<dynamic>.value()) as _i4.Future<dynamic>);
  @override
  _i4.Future<dynamic> signIn(
          {String? name,
          String? email,
          String? googleId,
          String? avatar,
          String? accessToken}) =>
      (super.noSuchMethod(
          Invocation.method(#signIn, [], {
            #name: name,
            #email: email,
            #googleId: googleId,
            #avatar: avatar,
            #accessToken: accessToken
          }),
          returnValue: Future<dynamic>.value()) as _i4.Future<dynamic>);
  @override
  _i4.Future<dynamic> getTopics() =>
      (super.noSuchMethod(Invocation.method(#getTopics, []),
          returnValue: Future<dynamic>.value()) as _i4.Future<dynamic>);
  @override
  _i4.Future<dynamic> getVideos(
          int? skip, int? limit, List<String>? selectedTopics) =>
      (super.noSuchMethod(
          Invocation.method(#getVideos, [skip, limit, selectedTopics]),
          returnValue: Future<dynamic>.value()) as _i4.Future<dynamic>);
  @override
  _i4.Future<dynamic> getVideoById(String? videoId) =>
      (super.noSuchMethod(Invocation.method(#getVideoById, [videoId]),
          returnValue: Future<dynamic>.value()) as _i4.Future<dynamic>);
  @override
  _i4.Future<dynamic> requestInvite({String? email}) => (super.noSuchMethod(
      Invocation.method(#requestInvite, [], {#email: email}),
      returnValue: Future<dynamic>.value()) as _i4.Future<dynamic>);
  @override
  _i4.Future<dynamic> getUserProfile({String? userId}) => (super.noSuchMethod(
      Invocation.method(#getUserProfile, [], {#userId: userId}),
      returnValue: Future<dynamic>.value()) as _i4.Future<dynamic>);
  @override
  _i4.Future<dynamic> createUserProfile(
          {String? userId, String? name, List<String>? topicIds}) =>
      (super.noSuchMethod(
          Invocation.method(#createUserProfile, [],
              {#userId: userId, #name: name, #topicIds: topicIds}),
          returnValue: Future<dynamic>.value()) as _i4.Future<dynamic>);
  @override
  _i4.Future<dynamic> getVideoStream(String? watchId) =>
      (super.noSuchMethod(Invocation.method(#getVideoStream, [watchId]),
          returnValue: Future<dynamic>.value()) as _i4.Future<dynamic>);
  @override
  _i4.Future<dynamic> postVideoStream(String? watchId, String? streamUrl) =>
      (super.noSuchMethod(
          Invocation.method(#postVideoStream, [watchId, streamUrl]),
          returnValue: Future<dynamic>.value()) as _i4.Future<dynamic>);
  @override
  _i4.Future<dynamic> logUserEventToMessageQueue(
          List<_i2.MqEventLog>? events) =>
      (super.noSuchMethod(
          Invocation.method(#logUserEventToMessageQueue, [events]),
          returnValue: Future<dynamic>.value()) as _i4.Future<dynamic>);
  @override
  _i4.Future<dynamic> addBookmarks(String? userId, String? bookmarkId) => (super
      .noSuchMethod(Invocation.method(#addBookmarks, [userId, bookmarkId]),
          returnValue: Future<dynamic>.value()) as _i4.Future<dynamic>);
}

/// A class which mocks [ConnectivityService].
///
/// See the documentation for Mockito's code generation for more information.
class MockConnectivityService extends _i1.Mock
    implements _i6.ConnectivityService {
  @override
  _i4.Stream<_i7.ConnectivityStatus> get connectivity =>
      (super.noSuchMethod(Invocation.getter(#connectivity),
              returnValue: Stream<_i7.ConnectivityStatus>.empty())
          as _i4.Stream<_i7.ConnectivityStatus>);
  @override
  _i4.Future<bool> get isConnected =>
      (super.noSuchMethod(Invocation.getter(#isConnected),
          returnValue: Future<bool>.value(false)) as _i4.Future<bool>);
}

/// A class which mocks [ExplodeService].
///
/// See the documentation for Mockito's code generation for more information.
class MockExplodeService extends _i1.Mock implements _i8.ExplodeService {
  @override
  _i4.Future<String> getStreamUrl(String? url) =>
      (super.noSuchMethod(Invocation.method(#getStreamUrl, [url]),
          returnValue: Future<String>.value('')) as _i4.Future<String>);
}

/// A class which mocks [NavigationService].
///
/// See the documentation for Mockito's code generation for more information.
class MockNavigationService extends _i1.Mock implements _i9.NavigationService {
  @override
  String get previousRoute =>
      (super.noSuchMethod(Invocation.getter(#previousRoute), returnValue: '')
          as String);
  @override
  String get currentRoute =>
      (super.noSuchMethod(Invocation.getter(#currentRoute), returnValue: '')
          as String);
  @override
  _i10.GlobalKey<_i11.NavigatorState>? nestedNavigationKey(int? index) =>
      (super.noSuchMethod(Invocation.method(#nestedNavigationKey, [index]))
          as _i10.GlobalKey<_i11.NavigatorState>?);
  @override
  void config(
          {bool? enableLog,
          bool? defaultPopGesture,
          bool? defaultOpaqueRoute,
          Duration? defaultDurationTransition,
          bool? defaultGlobalState,
          String? defaultTransition}) =>
      super.noSuchMethod(
          Invocation.method(#config, [], {
            #enableLog: enableLog,
            #defaultPopGesture: defaultPopGesture,
            #defaultOpaqueRoute: defaultOpaqueRoute,
            #defaultDurationTransition: defaultDurationTransition,
            #defaultGlobalState: defaultGlobalState,
            #defaultTransition: defaultTransition
          }),
          returnValueForMissingStub: null);
  @override
  _i4.Future<T?>? navigateWithTransition<T>(_i10.Widget? page,
          {bool? opaque,
          String? transition = r'',
          Duration? duration,
          bool? popGesture,
          int? id,
          _i12.Curve? curve,
          _i13.Bindings? binding,
          bool? fullscreenDialog = false,
          bool? preventDuplicates = true,
          _i14.Transition? transitionClass}) =>
      (super.noSuchMethod(Invocation.method(#navigateWithTransition, [
        page
      ], {
        #opaque: opaque,
        #transition: transition,
        #duration: duration,
        #popGesture: popGesture,
        #id: id,
        #curve: curve,
        #binding: binding,
        #fullscreenDialog: fullscreenDialog,
        #preventDuplicates: preventDuplicates,
        #transitionClass: transitionClass
      })) as _i4.Future<T?>?);
  @override
  _i4.Future<T?>? replaceWithTransition<T>(_i10.Widget? page,
          {bool? opaque,
          String? transition = r'',
          Duration? duration,
          bool? popGesture,
          int? id,
          _i12.Curve? curve,
          _i13.Bindings? binding,
          bool? fullscreenDialog = false,
          bool? preventDuplicates = true,
          _i14.Transition? transitionClass}) =>
      (super.noSuchMethod(Invocation.method(#replaceWithTransition, [
        page
      ], {
        #opaque: opaque,
        #transition: transition,
        #duration: duration,
        #popGesture: popGesture,
        #id: id,
        #curve: curve,
        #binding: binding,
        #fullscreenDialog: fullscreenDialog,
        #preventDuplicates: preventDuplicates,
        #transitionClass: transitionClass
      })) as _i4.Future<T?>?);
  @override
  bool back<T>({T? result, int? id}) => (super.noSuchMethod(
      Invocation.method(#back, [], {#result: result, #id: id}),
      returnValue: false) as bool);
  @override
  void popUntil(_i11.RoutePredicate? predicate) =>
      super.noSuchMethod(Invocation.method(#popUntil, [predicate]),
          returnValueForMissingStub: null);
  @override
  void popRepeated(int? popTimes) =>
      super.noSuchMethod(Invocation.method(#popRepeated, [popTimes]),
          returnValueForMissingStub: null);
  @override
  _i4.Future<T?>? navigateTo<T>(String? routeName,
          {dynamic arguments,
          int? id,
          bool? preventDuplicates = true,
          Map<String, String>? parameters}) =>
      (super.noSuchMethod(Invocation.method(#navigateTo, [
        routeName
      ], {
        #arguments: arguments,
        #id: id,
        #preventDuplicates: preventDuplicates,
        #parameters: parameters
      })) as _i4.Future<T?>?);
  @override
  _i4.Future<T?>? navigateToView<T>(_i10.Widget? view,
          {dynamic arguments,
          int? id,
          bool? opaque,
          _i12.Curve? curve,
          _i13.Bindings? binding,
          Duration? duration,
          bool? fullscreenDialog = false,
          bool? popGesture,
          bool? preventDuplicates = true,
          _i14.Transition? transition}) =>
      (super.noSuchMethod(Invocation.method(#navigateToView, [
        view
      ], {
        #arguments: arguments,
        #id: id,
        #opaque: opaque,
        #curve: curve,
        #binding: binding,
        #duration: duration,
        #fullscreenDialog: fullscreenDialog,
        #popGesture: popGesture,
        #preventDuplicates: preventDuplicates,
        #transition: transition
      })) as _i4.Future<T?>?);
  @override
  _i4.Future<T?>? replaceWith<T>(String? routeName,
          {dynamic arguments,
          int? id,
          bool? preventDuplicates = true,
          Map<String, String>? parameters}) =>
      (super.noSuchMethod(Invocation.method(#replaceWith, [
        routeName
      ], {
        #arguments: arguments,
        #id: id,
        #preventDuplicates: preventDuplicates,
        #parameters: parameters
      })) as _i4.Future<T?>?);
  @override
  _i4.Future<T?>? clearStackAndShow<T>(String? routeName,
          {dynamic arguments, int? id, Map<String, String>? parameters}) =>
      (super.noSuchMethod(Invocation.method(#clearStackAndShow, [
        routeName
      ], {
        #arguments: arguments,
        #id: id,
        #parameters: parameters
      })) as _i4.Future<T?>?);
  @override
  _i4.Future<T?>? clearTillFirstAndShow<T>(String? routeName,
          {dynamic arguments,
          int? id,
          bool? preventDuplicates = true,
          Map<String, String>? parameters}) =>
      (super.noSuchMethod(Invocation.method(#clearTillFirstAndShow, [
        routeName
      ], {
        #arguments: arguments,
        #id: id,
        #preventDuplicates: preventDuplicates,
        #parameters: parameters
      })) as _i4.Future<T?>?);
  @override
  _i4.Future<T?>? clearTillFirstAndShowView<T>(_i10.Widget? view,
          {dynamic arguments, int? id}) =>
      (super.noSuchMethod(Invocation.method(#clearTillFirstAndShowView, [view],
          {#arguments: arguments, #id: id})) as _i4.Future<T?>?);
  @override
  _i4.Future<T?>? pushNamedAndRemoveUntil<T>(String? routeName,
          {_i11.RoutePredicate? predicate, dynamic arguments, int? id}) =>
      (super.noSuchMethod(Invocation.method(#pushNamedAndRemoveUntil, [
        routeName
      ], {
        #predicate: predicate,
        #arguments: arguments,
        #id: id
      })) as _i4.Future<T?>?);
}

/// A class which mocks [BottomSheetService].
///
/// See the documentation for Mockito's code generation for more information.
class MockBottomSheetService extends _i1.Mock
    implements _i15.BottomSheetService {
  @override
  void setCustomSheetBuilders(Map<dynamic, _i15.SheetBuilder>? builders) =>
      super.noSuchMethod(Invocation.method(#setCustomSheetBuilders, [builders]),
          returnValueForMissingStub: null);
  @override
  _i4.Future<_i16.SheetResponse<dynamic>?> showBottomSheet(
          {String? title,
          String? description,
          String? confirmButtonTitle = r'Ok',
          String? cancelButtonTitle,
          bool? enableDrag = true,
          bool? barrierDismissible = true,
          bool? isScrollControlled = false,
          Duration? exitBottomSheetDuration,
          Duration? enterBottomSheetDuration,
          bool? ignoreSafeArea}) =>
      (super.noSuchMethod(
              Invocation.method(#showBottomSheet, [], {
                #title: title,
                #description: description,
                #confirmButtonTitle: confirmButtonTitle,
                #cancelButtonTitle: cancelButtonTitle,
                #enableDrag: enableDrag,
                #barrierDismissible: barrierDismissible,
                #isScrollControlled: isScrollControlled,
                #exitBottomSheetDuration: exitBottomSheetDuration,
                #enterBottomSheetDuration: enterBottomSheetDuration,
                #ignoreSafeArea: ignoreSafeArea
              }),
              returnValue: Future<_i16.SheetResponse<dynamic>?>.value())
          as _i4.Future<_i16.SheetResponse<dynamic>?>);
  @override
  _i4.Future<_i16.SheetResponse<T>?> showCustomSheet<T, R>(
          {dynamic variant,
          String? title,
          String? description,
          bool? hasImage = false,
          String? imageUrl,
          bool? showIconInMainButton = false,
          String? mainButtonTitle,
          bool? showIconInSecondaryButton = false,
          String? secondaryButtonTitle,
          bool? showIconInAdditionalButton = false,
          String? additionalButtonTitle,
          bool? takesInput = false,
          _i17.Color? barrierColor = const _i17.Color(2315255808),
          bool? barrierDismissible = true,
          bool? isScrollControlled = false,
          String? barrierLabel = r'',
          dynamic customData,
          R? data,
          bool? enableDrag = true,
          Duration? exitBottomSheetDuration,
          Duration? enterBottomSheetDuration,
          bool? ignoreSafeArea}) =>
      (super.noSuchMethod(
              Invocation.method(#showCustomSheet, [], {
                #variant: variant,
                #title: title,
                #description: description,
                #hasImage: hasImage,
                #imageUrl: imageUrl,
                #showIconInMainButton: showIconInMainButton,
                #mainButtonTitle: mainButtonTitle,
                #showIconInSecondaryButton: showIconInSecondaryButton,
                #secondaryButtonTitle: secondaryButtonTitle,
                #showIconInAdditionalButton: showIconInAdditionalButton,
                #additionalButtonTitle: additionalButtonTitle,
                #takesInput: takesInput,
                #barrierColor: barrierColor,
                #barrierDismissible: barrierDismissible,
                #isScrollControlled: isScrollControlled,
                #barrierLabel: barrierLabel,
                #customData: customData,
                #data: data,
                #enableDrag: enableDrag,
                #exitBottomSheetDuration: exitBottomSheetDuration,
                #enterBottomSheetDuration: enterBottomSheetDuration,
                #ignoreSafeArea: ignoreSafeArea
              }),
              returnValue: Future<_i16.SheetResponse<T>?>.value())
          as _i4.Future<_i16.SheetResponse<T>?>);
  @override
  void completeSheet(_i16.SheetResponse<dynamic>? response) =>
      super.noSuchMethod(Invocation.method(#completeSheet, [response]),
          returnValueForMissingStub: null);
}

/// A class which mocks [SnackbarService].
///
/// See the documentation for Mockito's code generation for more information.
class MockSnackbarService extends _i1.Mock implements _i18.SnackbarService {
  @override
  void registerSnackbarConfig(_i19.SnackbarConfig? config) =>
      super.noSuchMethod(Invocation.method(#registerSnackbarConfig, [config]),
          returnValueForMissingStub: null);
  @override
  void registerCustomSnackbarconfig(
          {dynamic customData, _i19.SnackbarConfig? config}) =>
      super.noSuchMethod(
          Invocation.method(#registerCustomSnackbarconfig, [],
              {#customData: customData, #config: config}),
          returnValueForMissingStub: null);
  @override
  void registerCustomMainButtonBuilder(
          {dynamic variant,
          _i10.Widget Function(String?, Function?)? builder}) =>
      super.noSuchMethod(
          Invocation.method(#registerCustomMainButtonBuilder, [],
              {#variant: variant, #builder: builder}),
          returnValueForMissingStub: null);
  @override
  void registerCustomSnackbarConfig(
          {dynamic variant,
          _i19.SnackbarConfig? config,
          _i19.SnackbarConfig Function()? configBuilder}) =>
      super.noSuchMethod(
          Invocation.method(#registerCustomSnackbarConfig, [], {
            #variant: variant,
            #config: config,
            #configBuilder: configBuilder
          }),
          returnValueForMissingStub: null);
  @override
  void showSnackbar(
          {String? title = r'',
          String? message,
          dynamic Function(dynamic)? onTap,
          Duration? duration = const Duration(seconds: 3),
          String? mainButtonTitle,
          void Function()? onMainButtonTapped}) =>
      super.noSuchMethod(
          Invocation.method(#showSnackbar, [], {
            #title: title,
            #message: message,
            #onTap: onTap,
            #duration: duration,
            #mainButtonTitle: mainButtonTitle,
            #onMainButtonTapped: onMainButtonTapped
          }),
          returnValueForMissingStub: null);
  @override
  _i4.Future<dynamic>? showCustomSnackBar(
          {String? message,
          dynamic customData,
          dynamic variant,
          String? title,
          String? mainButtonTitle,
          void Function()? onMainButtonTapped,
          Function? onTap,
          Duration? duration = const Duration(seconds: 1)}) =>
      (super.noSuchMethod(Invocation.method(#showCustomSnackBar, [], {
        #message: message,
        #customData: customData,
        #variant: variant,
        #title: title,
        #mainButtonTitle: mainButtonTitle,
        #onMainButtonTapped: onMainButtonTapped,
        #onTap: onTap,
        #duration: duration
      })) as _i4.Future<dynamic>?);
}
