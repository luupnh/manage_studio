import 'package:bloc/bloc.dart';
import 'package:manage_studio/resources/string_text.dart';
import 'package:manage_studio/utils/enum_utils.dart';
import 'login_event.dart';
import 'login_state.dart';
import 'package:manage_studio/utils/string_validator.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginState(isLoading: true)) {
    on<LoginEvent>((event, emit) {
      emit(state.copyWith(isLoading: false));
    });
    on<LoginEventValidateUserName>((event, emit) {
      emit(state.copyWith(
          isLoading: false,
          errorValidUserName: event.userName.isValidUserName(),
          error: state.error));
    });
    on<LoginEventValidatePassword>((event, emit) {
      emit(state.copyWith(
          isLoading: false,
          errorValidPassword: event.password.isValidPassword(),
          error: state.error));
    });
    on<LoginEventClickedEvent>((event, emit) {
      if(event.userName.isValidUserName() == AppString.inputValid && event.password.isValidUserName() == AppString.inputValid) {
          emit(state.copyWith(
            clickedLoginStatus: LoginClickedStatus.success
          ));
      } else {
        emit(state.copyWith(
            isLoading: false,
            errorValidUserName: event.userName.isValidUserName(),
            errorValidPassword: event.password.isValidPassword(),
            clickedLoginStatus: LoginClickedStatus.isValid,
            error: state.error));
      }
    });
  }
}
