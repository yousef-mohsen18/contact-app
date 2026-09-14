abstract class AppvAlidator {
  static String? emailValidator(String? email) {
    if (email == null || email.isEmpty) {
      return "email cant be empty";
    }
    final RegExp regex = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    );

    if(!regex.hasMatch(email)){
      return "invalid email";
    }
    return null;
  }
}
