import 'package:feed/app/app.router.dart';
import 'package:feed/core/enums/bottom_sheet.dart';
import 'package:feed/ui/restricted_home/restricted_home_viewmodel.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../helpers/test_helpers.dart';
import '../helpers/mock_data.dart';

RestrictedHomeViewModel _getModel() => RestrictedHomeViewModel();

void main() {
  group('Restricted HomeViewModel Test -', () {
    setUp(() => registerServices());
    tearDown(() => unregisterServices());

    group('showConstraint -', () {
      test("when show constraint is called, it should open a bottom sheet",
          () async {
        final bottomSheetService = getAndRegisterBottomSheetService();
        final model = _getModel();
        await model.showConstraint();
        verify(bottomSheetService.showCustomSheet(
          variant: BottomSheetType.Constraint,
          title: bottomSheetInput["title"],
          description: bottomSheetInput["description"],
          mainButtonTitle: bottomSheetInput["mainButtonTitle"],
          secondaryButtonTitle: bottomSheetInput["secondaryButtonTitle"],
        ));
      });

      test("when selected continue with google, run loginWithGoogle", () async {
        // selects continue with google
        getAndRegisterBottomSheetService(
            responseData: ThreeButtonResponseData.Primary);
        final model = _getModel();
        await model.showConstraint();

        verify(model.loginWithGoogle());
      });

      test("when selected request invite, navigate to invite", () async {
        // selects request invite
        getAndRegisterBottomSheetService(
            responseData: ThreeButtonResponseData.Secondary);
        final navigationService = getAndRegisterNavigationService();
        final model = _getModel();
        await model.showConstraint();

        verify(navigationService.replaceWith(Routes.inviteView));
      });

      test("when dismiss the sheet with no response, it should do nothing",
          () async {
        // selects request invite
        getAndRegisterBottomSheetService(confirmed: false, responseData: null);
        final navigationService = getAndRegisterNavigationService();
        final model = _getModel();
        await model.showConstraint();

        verifyNever(navigationService.replaceWith(Routes.inviteView));
        verifyNever(model.loginWithGoogle());
      });
    });

    group("loginWithGoogle - ", () {
      test(
          "on successful google login and the user with profile, navigate to home",
          () async {
        final navigationService = getAndRegisterNavigationService();
        final model = _getModel();

        await model.loginWithGoogle();
        verify(navigationService.replaceWith(Routes.homeView));
      });

      test(
          "on successful google login and the user with profile, navigate to home",
          () async {
        getAndRegisterUserService(profileExists: false);
        final navigationService = getAndRegisterNavigationService();
        final model = _getModel();

        await model.loginWithGoogle();
        verify(navigationService.replaceWith(Routes.topicSelectionView));
      });

      test("on server error, it should not redirect anywhere", () async {
        getAndRegisterUserService(failLogin: true);
        final navigationService = getAndRegisterNavigationService();
        final model = _getModel();

        await model.loginWithGoogle();
        verifyNever(navigationService.replaceWith(Routes.topicSelectionView));
        verifyNever(navigationService.replaceWith(Routes.homeView));
      });
    });
  });
}
