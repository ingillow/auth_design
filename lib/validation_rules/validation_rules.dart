/// правила проверки валидации пароля и логина при пользовательском вводе
class ValidationRules {
  final _emailRules = RegExp(
    r'^[a-zA-Z0\d._%+-]+@[a-zA-Z0\d.-]+\.[a-zA-Z]{2,}$',
  );
  final _passwordRules = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[\d]).{8,}$');

  String validateEmail(String email) {
    if (email.isEmpty) {
      return 'Email cannot be empty';
    } else if (!_emailRules.hasMatch(email)) {
      return 'Please enter a valid email';
    }
    return '';
  }

  String validatePassword(String password) {
    if (password.isEmpty) {
      return 'Password cannot be empty';
    } else if (!_passwordRules.hasMatch(password)) {
      return 'Password should be 8 digit, uppercase letters';
    }
    return '';
  }
}
