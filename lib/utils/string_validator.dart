import 'package:manage_studio/resources/app_string.dart';


extension StringValidator on String? {
  bool get isNullOrEmpty => this?.isEmpty ?? true;

  bool get isNotNullOrNotEmpty => this?.isNotEmpty ?? false;

  String isValidUserName() {
    if (isNullOrEmpty) {
      return AppStrings.notNullFormInput;
    } else {
      if (int.tryParse(this!) != null) {
        if (RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)').hasMatch(this!)) {
          return AppStrings.inputValid;
        } else {
          return AppStrings.phoneNumberIsValid;
        }
      } else {
        if (RegExp(
                r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
            .hasMatch(this!)) {
          return AppStrings.inputValid;
        } else {
          return AppStrings.emailIsValid;
        }
      }
    }
  }

  String isValidPassword() {
    if (isNullOrEmpty) {
      return AppStrings.notNullFormInput;
    } else {
      if (this!.length < 7) {
        return AppStrings.passwordIsValid;
      } else {
        return AppStrings.inputValid;
      }
    }
  }
}
