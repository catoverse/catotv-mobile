mixin Validators {
  String validateEmail(String email) {
    RegExp reg = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

    if (!reg.hasMatch(email)) {
      return 'Please enter a valid email';
    } else if (email.length < 5) {
      return 'Please enter a valid email';
    }
    return "";
  }

  String validatePassword(String password) {
    if (password.isEmpty) {
      return 'Please Enter Your Password';
    } else if (password.length < 6) {
      return 'Your password must be atleast 6';
    }
    return "";
  }

  String validatePhoneNo(String phone) {
    RegExp regex = new RegExp(r"^[0-9]{10}$");
    if (phone.isEmpty) {
      return "Please enter your contact details";
    } else if (!regex.hasMatch(phone)) {
      return "Please enter a valid number";
    } else {
      return "";
    }
  }
}
