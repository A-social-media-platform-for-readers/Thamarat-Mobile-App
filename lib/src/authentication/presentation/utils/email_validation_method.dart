bool formValidation(String value, String inputType) {
  // Define named constants for regex patterns
  const String emailRegex =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  const String passwordRegex =
      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';

  switch (inputType) {
    case 'email':
      return RegExp(emailRegex).hasMatch(value);
    case 'password':
      return RegExp(passwordRegex).hasMatch(value);
    default:
      return false;
  }
}

