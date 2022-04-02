class LoginEvent {
  @override
  String toString() {
    return runtimeType.toString();
  }
}

class LoginEventShowPasswordClicked extends LoginEvent {
}

class LoginEventClickedEvent extends LoginEvent {
  final String? userName;
  final String? password;

  LoginEventClickedEvent(this.userName, this.password);


}

class LoginEventValidateUserName extends LoginEvent {
  final String userName;
  LoginEventValidateUserName(this.userName);
}

class LoginEventValidatePassword extends LoginEvent {
  final String password;

  LoginEventValidatePassword(this.password);
}
