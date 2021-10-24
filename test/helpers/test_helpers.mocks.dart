// Mocks generated by Mockito 5.0.16 from annotations
// in feed/test/helpers/test_helpers.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;
import 'dart:ui' as _i13;

import 'package:feed/core/enums/connectivity_status.dart' as _i8;
import 'package:feed/core/enums/login_events.dart' as _i5;
import 'package:feed/core/models/app_models.dart' as _i2;
import 'package:feed/core/services/explode_service.dart' as _i9;
import 'package:feed/core/services/user_service.dart' as _i3;
import 'package:feed/remote/api/api_service.dart' as _i6;
import 'package:feed/remote/connectivity/connectivity_service.dart' as _i7;
import 'package:flutter/material.dart' as _i11;
import 'package:get/get.dart' as _i12;
import 'package:mockito/mockito.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i10;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeUser_0 extends _i1.Fake implements _i2.User {}

/// A class which mocks [UserService].
///
/// See the documentation for Mockito's code generation for more information.
class MockUserService extends _i1.Mock implements _i3.UserService {
  @override
  _i2.User get currentUser =>
      (super.noSuchMethod(Invocation.getter(#currentUser),
          returnValue: _FakeUser_0()) as _i2.User);
  @override
  bool get hasLoggedInUser => (super
          .noSuchMethod(Invocation.getter(#hasLoggedInUser), returnValue: false)
      as bool);
  @override
  _i4.Future<_i5.LoginEvents> loginWithGoogle() => (super.noSuchMethod(
          Invocation.method(#loginWithGoogle, []),
          returnValue: Future<_i5.LoginEvents>.value(_i5.LoginEvents.failed))
      as _i4.Future<_i5.LoginEvents>);
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
  @override
  _i4.Future<bool> updateProfile({List<String>? topicIds}) =>
      (super.noSuchMethod(
          Invocation.method(#updateProfile, [], {#topicIds: topicIds}),
          returnValue: Future<bool>.value(false)) as _i4.Future<bool>);
  @override
  String toString() => super.toString();
}

/// A class which mocks [APIService].
///
/// See the documentation for Mockito's code generation for more information.
class MockAPIService extends _i1.Mock implements _i6.APIService {
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
  _i4.Future<dynamic> getTopVideos() =>
      (super.noSuchMethod(Invocation.method(#getTopVideos, []),
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
  _i4.Future<dynamic> getVideosByIds(List<String>? videoIds) =>
      (super.noSuchMethod(Invocation.method(#getVideosByIds, [videoIds]),
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
  _i4.Future<dynamic> geFullUserProfile({String? userId}) =>
      (super.noSuchMethod(
          Invocation.method(#geFullUserProfile, [], {#userId: userId}),
          returnValue: Future<dynamic>.value()) as _i4.Future<dynamic>);
  @override
  _i4.Future<dynamic> createUserProfile(
          {String? userId, String? name, List<String>? topicIds}) =>
      (super.noSuchMethod(
          Invocation.method(#createUserProfile, [],
              {#userId: userId, #name: name, #topicIds: topicIds}),
          returnValue: Future<dynamic>.value()) as _i4.Future<dynamic>);
  @override
  _i4.Future<dynamic> updateUserProfile(
          {String? userId, String? name, List<String>? topicIds}) =>
      (super.noSuchMethod(
          Invocation.method(#updateUserProfile, [],
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
  @override
  _i4.Future<bool> letUserInOrNot(String? email) =>
      (super.noSuchMethod(Invocation.method(#letUserInOrNot, [email]),
          returnValue: Future<bool>.value(false)) as _i4.Future<bool>);
  @override
  _i4.Future<_i2.GetWaitlist?> addUserToWailist(String? email) =>
      (super.noSuchMethod(Invocation.method(#addUserToWailist, [email]),
              returnValue: Future<_i2.GetWaitlist?>.value())
          as _i4.Future<_i2.GetWaitlist?>);
  @override
  String toString() => super.toString();
}

/// A class which mocks [ConnectivityService].
///
/// See the documentation for Mockito's code generation for more information.
class MockConnectivityService extends _i1.Mock
    implements _i7.ConnectivityService {
  @override
  _i4.Stream<_i8.ConnectivityStatus> get connectivity =>
      (super.noSuchMethod(Invocation.getter(#connectivity),
              returnValue: Stream<_i8.ConnectivityStatus>.empty())
          as _i4.Stream<_i8.ConnectivityStatus>);
  @override
  _i4.Future<bool> get isConnected =>
      (super.noSuchMethod(Invocation.getter(#isConnected),
          returnValue: Future<bool>.value(false)) as _i4.Future<bool>);
  @override
  String toString() => super.toString();
}

/// A class which mocks [ExplodeService].
///
/// See the documentation for Mockito's code generation for more information.
class MockExplodeService extends _i1.Mock implements _i9.ExplodeService {
  @override
  _i4.Future<String> getStreamUrl(String? url) =>
      (super.noSuchMethod(Invocation.method(#getStreamUrl, [url]),
          returnValue: Future<String>.value('')) as _i4.Future<String>);
  @override
  String toString() => super.toString();
}

/// A class which mocks [NavigationService].
///
/// See the documentation for Mockito's code generation for more information.
class MockNavigationService extends _i1.Mock implements _i10.NavigationService {
  @override
  String get previousRoute =>
      (super.noSuchMethod(Invocation.getter(#previousRoute), returnValue: '')
          as String);
  @override
  String get currentRoute =>
      (super.noSuchMethod(Invocation.getter(#currentRoute), returnValue: '')
          as String);
  @override
  _i11.GlobalKey<_i11.NavigatorState>? nestedNavigationKey(int? index) =>
      (super.noSuchMethod(Invocation.method(#nestedNavigationKey, [index]))
          as _i11.GlobalKey<_i11.NavigatorState>?);
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
  _i4.Future<T?>? navigateWithTransition<T>(_i11.Widget? page,
          {bool? opaque,
          String? transition = r'',
          Duration? duration,
          bool? popGesture,
          int? id,
          _i11.Curve? curve,
          _i12.Bindings? binding,
          bool? fullscreenDialog = false,
          bool? preventDuplicates = true,
          _i12.Transition? transitionClass}) =>
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
  _i4.Future<T?>? replaceWithTransition<T>(_i11.Widget? page,
          {bool? opaque,
          String? transition = r'',
          Duration? duration,
          bool? popGesture,
          int? id,
          _i11.Curve? curve,
          _i12.Bindings? binding,
          bool? fullscreenDialog = false,
          bool? preventDuplicates = true,
          _i12.Transition? transitionClass}) =>
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
  _i4.Future<T?>? navigateToView<T>(_i11.Widget? view,
          {dynamic arguments,
          int? id,
          bool? opaque,
          _i11.Curve? curve,
          _i12.Bindings? binding,
          Duration? duration,
          bool? fullscreenDialog = false,
          bool? popGesture,
          bool? preventDuplicates = true,
          _i12.Transition? transition}) =>
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
  _i4.Future<T?>? clearTillFirstAndShowView<T>(_i11.Widget? view,
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
  @override
  String toString() => super.toString();
}

/// A class which mocks [BottomSheetService].
///
/// See the documentation for Mockito's code generation for more information.
class MockBottomSheetService extends _i1.Mock
    implements _i10.BottomSheetService {
  @override
  void setCustomSheetBuilders(Map<dynamic, _i10.SheetBuilder>? builders) =>
      super.noSuchMethod(Invocation.method(#setCustomSheetBuilders, [builders]),
          returnValueForMissingStub: null);
  @override
  _i4.Future<_i10.SheetResponse<dynamic>?> showBottomSheet(
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
              returnValue: Future<_i10.SheetResponse<dynamic>?>.value())
          as _i4.Future<_i10.SheetResponse<dynamic>?>);
  @override
  _i4.Future<_i10.SheetResponse<T>?> showCustomSheet<T, R>(
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
          _i13.Color? barrierColor = const _i13.Color(2315255808),
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
              returnValue: Future<_i10.SheetResponse<T>?>.value())
          as _i4.Future<_i10.SheetResponse<T>?>);
  @override
  void completeSheet(_i10.SheetResponse<dynamic>? response) =>
      super.noSuchMethod(Invocation.method(#completeSheet, [response]),
          returnValueForMissingStub: null);
  @override
  String toString() => super.toString();
}

/// A class which mocks [SnackbarService].
///
/// See the documentation for Mockito's code generation for more information.
class MockSnackbarService extends _i1.Mock implements _i10.SnackbarService {
  @override
  void registerSnackbarConfig(_i10.SnackbarConfig? config) =>
      super.noSuchMethod(Invocation.method(#registerSnackbarConfig, [config]),
          returnValueForMissingStub: null);
  @override
  void registerCustomSnackbarconfig(
          {dynamic customData, _i10.SnackbarConfig? config}) =>
      super.noSuchMethod(
          Invocation.method(#registerCustomSnackbarconfig, [],
              {#customData: customData, #config: config}),
          returnValueForMissingStub: null);
  @override
  void registerCustomMainButtonBuilder(
          {dynamic variant,
          _i11.Widget Function(String?, Function?)? builder}) =>
      super.noSuchMethod(
          Invocation.method(#registerCustomMainButtonBuilder, [],
              {#variant: variant, #builder: builder}),
          returnValueForMissingStub: null);
  @override
  void registerCustomSnackbarConfig(
          {dynamic variant,
          _i10.SnackbarConfig? config,
          _i10.SnackbarConfig Function()? configBuilder}) =>
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
  @override
  String toString() => super.toString();
}
