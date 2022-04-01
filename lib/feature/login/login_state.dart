import 'package:equatable/equatable.dart';
import 'package:manage_studio/utils/enum_utils.dart';

class LoginState extends Equatable {
  final error;
  final bool isLoading;
  final String? errorValidUserName;
  final String? errorValidPassword;
  final LoginClickedStatus clickedLoginStatus;
  final bool obscureText;

  const LoginState({
    this.clickedLoginStatus = LoginClickedStatus.notStarted,
    this.error,
    this.errorValidUserName,
    this.errorValidPassword,
    this.obscureText = true,
    this.isLoading = false,
  });

  @override
  List<Object?> get props =>
      [isLoading, errorValidUserName, errorValidPassword, obscureText, clickedLoginStatus, error];

  LoginState copyWith({
    var error,
    bool? isLoading,
    errorValidUserName,
    errorValidPassword,
    clickedLoginStatus,
    obscureText,
  }) =>
      LoginState(
        error: error,
        errorValidUserName: errorValidUserName ?? this.errorValidUserName,
        errorValidPassword: errorValidPassword ?? this.errorValidPassword,
        obscureText: obscureText ?? this.obscureText,
        isLoading: isLoading ?? false,
        clickedLoginStatus: clickedLoginStatus ?? this.clickedLoginStatus
      );
}
