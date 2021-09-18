import 'package:feed/app/app.locator.dart';
import 'package:feed/core/mixins/validators.dart';
import 'package:feed/remote/api/api_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'invite_view.form.dart';

class InviteViewModel extends FormViewModel with Validators {
  final APIService _apiService = locator<APIService>();
  final SnackbarService _snackbarService = locator<SnackbarService>();
  final DialogService _dialogService = locator<DialogService>();
  final NavigationService _navigationService = locator<NavigationService>();

  Future requestInvite() async {
    if (!hasEmail) {
      return _snackbarService.showSnackbar(
          title: "Oops", message: "Email can't be empty");
    }
    String error = validateEmail(emailValue!);

    if (error.isNotEmpty) {
      return _snackbarService.showSnackbar(title: "Oops", message: error);
    }

    if (emailValue!.isEmpty) {
      return _snackbarService.showSnackbar(
          title: "Oops", message: "Email can't be empty");
    }

    setBusy(true);

    var res = await _apiService.requestInvite(email: emailValue!);

    setBusy(false);

    if (res is bool && res) {
      await _dialogService.showDialog(
          title: "Success", description: "We've added you to the waitlist");

      return _navigationService.back();
    }

    //TODO: Figure another way around to display this
    return _snackbarService.showSnackbar(
        title: "Woaah!!", message: "You're already in the waitlist");
  }

  @override
  void setFormStatus() {}
}
