import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:manage_studio/components/check_box.dart';
import 'package:manage_studio/feature/home/home_widget.dart';
import 'package:manage_studio/feature/login/login_bloc.dart';
import 'package:manage_studio/feature/login/login_event.dart';
import 'package:manage_studio/feature/login/login_state.dart';
import 'package:manage_studio/resources/app_icon.dart';
import 'package:manage_studio/resources/app_string.dart';
import 'package:manage_studio/resources/colors.dart';
import 'package:manage_studio/resources/strings_images.dart';
import 'package:manage_studio/utils/app_button.dart';
import 'package:manage_studio/utils/app_dialog.dart';
import 'package:manage_studio/utils/enum_utils.dart';

import '../../utils/app_textfield_input_form.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  final TextEditingController _usernameController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();
  late LoginBloc bloc;

  @override
  void dispose() {
    super.dispose();
    _usernameController.dispose();
    _passwordController.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    bloc = LoginBloc()..add(LoginEvent());
    super.didChangeDependencies();
  }

  _validateUserName(String usrName) =>
      bloc.add(LoginEventValidateUserName(usrName));

  _validatePassword(String pwd) => bloc.add(LoginEventValidatePassword(pwd));

  _clickButtonLogin(String usrName, String pwd) =>
      bloc.add(LoginEventClickedEvent(usrName, pwd));

  _clickShowPassword() => bloc.add(LoginEventShowPasswordClicked());

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<LoginBloc>(
            create: (BuildContext context) => bloc,
          ),
        ],
        child: BlocConsumer<LoginBloc, LoginState>(
          listener: _handleAction,
          builder: _buildBody,
        ));
  }

  Widget _buildBody(BuildContext context, LoginState state) {
    var paddingTotal = MediaQuery.of(context).viewPadding.top;
    return BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {
      if (state.isLoading) {
        return Container(color: Colors.red);
      } else {
        return Material(
          color: AppColors.backgroundColor,
          child: Container(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).viewPadding.top,
                bottom: MediaQuery.of(context).viewPadding.bottom),
            color: AppColors.shadowColor,
            child: Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppColors.backgroundColor,
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        //logo
                        Container(
                          height: 150,
                          padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                          child: Image.asset(StringImages.logoLogin, fit: BoxFit.fill),
                        ),
                        //form login
                        Container(
                          padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              //username
                              AppTextField(
                                height: 80.0,
                                hintText: AppStrings.usernameFormLogin,
                                suffixIcon: AppIcon.iUser,
                                textError: state.errorValidUserName,
                                minLines: 1,
                                maxLines: 1,
                                fontSize: 14.0,
                                onChanged: _validateUserName,
                                textEditingController: _usernameController,
                              ),

                              //password
                              AppTextField(
                                height: 80.0,
                                hintText: AppStrings.passwordFormLogin,
                                suffixIcon: IconButton(
                                    icon: state.obscureText
                                        ? AppIcon.iEye
                                        : AppIcon.iEyeSlash,
                                    onPressed: () {
                                      _clickShowPassword();
                                    }),
                                textError: state.errorValidPassword,
                                minLines: 1,
                                maxLines: 1,
                                fontSize: 14.0,
                                obscureText: state.obscureText,
                                onChanged: _validatePassword,
                                textEditingController: _passwordController,
                              ),

                              //Quên mật khẩu - Ghi nhớ đăng nhập
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  CheckBoxWidget(
                                    onChange: (value) {},
                                    isChecked: true,
                                    textLeftCheckBox: AppStrings.rememberLogin,
                                  ),
                                  const Text(AppStrings.forgotPassword,
                                      maxLines: 1,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontFamily: 'AvoNormal',
                                          fontSize: 12,
                                          color: AppColors.primaryColor,
                                          overflow: TextOverflow.clip)),
                                ],
                              ),

                              //Button đăng nhập
                              const SizedBox(height: 10.0),
                              AppButton(
                                onTap: () {
                                  _clickButtonLogin(_usernameController.text,
                                      _passwordController.text);
                                },
                                text: AppStrings.buttonLogin,
                                textColor: AppColors.textColorsWhite,
                              )
                            ],
                          ),
                        ),

                        //footer
                        Center(
                          child: FittedBox(
                            child: Container(
                              padding: const EdgeInsets.only(
                                  right: 16.0,
                                  left: 16.0,
                                  top: 20.0,
                                  bottom: 10.0),
                              child: const Text(AppStrings.hotline,
                                  maxLines: 3,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontFamily: 'AvoNormal',
                                      fontSize: 14,
                                      color: AppColors.textColorsBlack,
                                      overflow: TextOverflow.clip)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      }
    });
  }

  Future<void> _handleAction(BuildContext context, LoginState state) async {
    if (state.clickedLoginStatus == LoginClickedStatus.isValid) {
      print("status click button" + state.clickedLoginStatus.toString());
      DialogBuilder(context).showDialogError();
    }
    if (state.clickedLoginStatus == LoginClickedStatus.failed) {
    }
    if (state.clickedLoginStatus == LoginClickedStatus.success) {
      DialogBuilder(context).showDialogLoading(function: () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomeWidget()));
      });
    }
  }
}
