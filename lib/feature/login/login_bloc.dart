import 'package:bloc/bloc.dart';
import 'package:manage_studio/resources/app_string.dart';
import 'package:manage_studio/utils/enum_utils.dart';
import 'package:manage_studio/utils/string_validator.dart';

import 'login_event.dart';
import 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginState(isLoading: true)) {
    on<LoginEvent>((event, emit) {
      emit(state.copyWith(
          isLoading: false, clickedLoginStatus: LoginClickedStatus.notStarted));
    });
    on<LoginEventValidateUserName>((event, emit) {
      emit(state.copyWith(
          isLoading: false,
          errorValidUserName: event.userName.isValidUserName(),
          clickedLoginStatus: LoginClickedStatus.notStarted,
          error: state.error));
    });
    on<LoginEventValidatePassword>((event, emit) {
      emit(state.copyWith(
          isLoading: false,
          errorValidPassword: event.password.isValidPassword(),
          clickedLoginStatus: LoginClickedStatus.notStarted,
          error: state.error));
    });
    on<LoginEventShowPasswordClicked>((event, emit) {
      emit(state.copyWith(
          isLoading: false,
          obscureText: !state.obscureText,
          error: state.error));
    });
    on<LoginEventClickedEvent>((event, emit) {
      if (event.userName.isValidUserName() == AppStrings.inputValid &&
          event.password.isValidPassword() == AppStrings.inputValid) {
        emit(state.copyWith(clickedLoginStatus: LoginClickedStatus.success));
      } else {
        emit(state.copyWith(
            isLoading: false,
            errorValidUserName: event.userName.isValidUserName(),
            errorValidPassword: event.password.isValidPassword(),
            clickedLoginStatus: LoginClickedStatus.isValid,
            error: AppStrings.errorInputIsValid));
      }
    });
  }
}
