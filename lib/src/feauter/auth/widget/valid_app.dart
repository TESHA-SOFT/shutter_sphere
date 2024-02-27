class ValidApp {
  static String value = '';

  String? validateEmail(String? email) {
    RegExp emailRegax = RegExp(r'^[\w\.-]+@[\w-]+\.\w{2,3}(\.\w{2,3})?$');
    final isEmailValid = emailRegax.hasMatch(email ?? '');
    if (!isEmailValid) {
      return 'Please enter a valid email';
    }
    return null;
  }

  String? validatePassword(String? password) {
    value = password!;
    if (password.length < 8) {
      return 'The password must be at least 8 characters long';
    }
    return null;
  }

  String? validateUsername(String? username) {
    if (username == '') {
      return 'Enter a username';
    }
    return null;
  }

  String? resetPassword(String? password) {
    if (value != password) {
      return 'Confirm password not matching';
    }
    return null;
  }
}
