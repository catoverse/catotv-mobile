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
    if (!hasEmail) return;
    String error = validateEmail(emailValue!);

    if (error.isNotEmpty)
      return _snackbarService.showCustomSnackBar(message: error);

    if (emailValue!.isEmpty)
      return _snackbarService.showCustomSnackBar(
          message: "Email can't be empty");

    var res = await _apiService.requestInvite(email: emailValue!);

    if (res is bool && res) {
      await _dialogService.showDialog(
          title: "Success", description: "We've added you to the waitlist");

      return _navigationService.back();
    }

    //TODO: Figure another way around to display this
    return _snackbarService.showCustomSnackBar(
        message: "You're already in the waitlist");
  }

  @override
  void setFormStatus() {
    // TODO: implement setFormStatus
  }
}
