import 'package:equatable/equatable.dart';

class LoginState extends Equatable {
  final error;
  final bool isLoading;
  final bool isValidUserName;
  final bool isValidPassword;
  final bool obscureText;

  const LoginState({
    this.error,
    this.isValidUserName = false,
    this.isValidPassword = false,
    this.obscureText = true,
    this.isLoading = false,
  });

  @override
  List<Object?> get props =>
      [isLoading, isValidUserName, isValidPassword, obscureText, error];

  LoginState copyWith({
    var error,
    bool? isLoading,
    isValidUserName,
    isValidPassword,
    obscureText,
  }) =>
      LoginState(
        error: error,
        isValidUserName: isValidUserName ?? this.isValidUserName,
        isValidPassword: isValidPassword ?? this.isValidPassword,
        obscureText: obscureText ?? this.obscureText,
        isLoading: isLoading ?? false,
      );
}
