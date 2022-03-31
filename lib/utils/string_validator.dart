import 'package:manage_studio/resources/string_text.dart';


extension StringValidator on String? {
  bool get isNullOrEmpty => this?.isEmpty ?? true;

  bool get isNotNullOrNotEmpty => this?.isNotEmpty ?? false;

  String isValidUserName() {
    if (isNullOrEmpty) {
      return AppString.notNullFormInput;
    } else {
      if (int.tryParse(this!) != null) {
        if (RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)').hasMatch(this!)) {
          return AppString.inputValid;
        } else {
          return AppString.phoneNumberIsValid;
        }
      } else {
        if (RegExp(
                r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
            .hasMatch(this!)) {
          return AppString.inputValid;
        } else {
          return AppString.emailIsValid;
        }
      }
    }
  }

  String isValidPassword() {
    if (isNullOrEmpty) {
      return AppString.notNullFormInput;
    } else {
      if (this!.length < 7) {
        return AppString.passwordIsValid;
      } else {
        return AppString.inputValid;
      }
    }
  }
}
