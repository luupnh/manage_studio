import 'package:bloc/bloc.dart';
import 'login_event.dart';
import 'login_state.dart';
import 'package:manage_studio/utils/string_validator.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginState(isLoading: true)) {
    on<LoginEvent>((event, emit) {
      emit(state.copyWith(isLoading: false));
    });
    on<ValidateUserName>((event, emit) {
      emit(state.copyWith(
          isLoading: false,
          errorValidUserName: event.userName.isValidUserName(),
          error: state.error));
      print("isValidUser " + event.userName.isValidUserName().toString());
    });
    on<ValidatePassword>((event, emit) {
      print("isValidPwd " + event.password.isValidPassword().toString());
      emit(state.copyWith(
          isLoading: false,
          errorValidPassword: event.password.isValidPassword(),
          error: state.error));
    });
  }
}
