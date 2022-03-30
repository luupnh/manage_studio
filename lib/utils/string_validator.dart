extension StringValidator on String? {
  bool get isNotNullOrNotEmpty => this?.isNotEmpty ?? false;

  bool isValidUserName() {
    if (!isNotNullOrNotEmpty) {
      return false;
    } else {
      if (int.tryParse(this!) != null) {
        return RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)').hasMatch(this!);
      } else {
        return RegExp(
                r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
            .hasMatch(this!);
      }
    }
  }

  bool isValidPassword() {
    if (!isNotNullOrNotEmpty) {
      return false;
    } else {
      return this!.length > 7;
    }
  }
}
