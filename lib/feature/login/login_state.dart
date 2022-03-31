import 'package:equatable/equatable.dart';

class LoginState extends Equatable {
  final error;
  final bool isLoading;
  final String? errorValidUserName;
  final String? errorValidPassword;
  final bool obscureText;

  const LoginState({
    this.error,
    this.errorValidUserName,
    this.errorValidPassword,
    this.obscureText = true,
    this.isLoading = false,
  });

  @override
  List<Object?> get props =>
      [isLoading, errorValidUserName, errorValidPassword, obscureText, error];

  LoginState copyWith({
    var error,
    bool? isLoading,
    errorValidUserName,
    errorValidPassword,
    obscureText,
  }) =>
      LoginState(
        error: error,
        errorValidUserName: errorValidUserName ?? this.errorValidUserName,
        errorValidPassword: errorValidPassword ?? this.errorValidPassword,
        obscureText: obscureText ?? this.obscureText,
        isLoading: isLoading ?? false,
      );
}
