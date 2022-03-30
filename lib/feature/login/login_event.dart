class LoginEvent {
  @override
  String toString() {
    return runtimeType.toString();
  }
}

class ShowPasswordClickedEvent extends LoginEvent {
  final bool obscureText;

  ShowPasswordClickedEvent(this.obscureText);
}

class LoginClickedEvent extends LoginEvent {
  final String userName;
  final String password;

  LoginClickedEvent(
    this.userName,
    this.password,
  );
}

class ValidateUserName extends LoginEvent {
  final String userName;
  ValidateUserName(this.userName);
}

class ValidatePassword extends LoginEvent {
  final String password;

  ValidatePassword(this.password);
}
