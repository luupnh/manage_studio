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
          isValidUserName: event.userName.isValidUserName(),
          error: state.error));
      print(event.userName.isValidUserName());
    });
    on<ValidatePassword>((event, emit) {
      emit(state.copyWith(
          isLoading: false,
          isValidPassword: event.password.isValidPassword(),
          error: state.error));
    });
  }
}
