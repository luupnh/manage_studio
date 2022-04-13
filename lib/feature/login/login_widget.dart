import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:manage_studio/components/check_box.dart';
import 'package:manage_studio/feature/home/home_widget.dart';
import 'package:manage_studio/feature/login/login_bloc.dart';
import 'package:manage_studio/feature/login/login_event.dart';
import 'package:manage_studio/feature/login/login_state.dart';
import 'package:manage_studio/resources/colors.dart';
import 'package:manage_studio/resources/strings_images.dart';
import 'package:manage_studio/resources/app_string.dart';
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
                child: Container(
                  margin: EdgeInsets.only(
                      top: paddingTotal,
                      bottom: paddingTotal,
                      right: paddingTotal / 2,
                      left: paddingTotal / 2),
                  decoration: BoxDecoration(
                      color: AppColors.backgroundColor,
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                            AppTextFieldInput(
                              hintText: AppStrings.usernameFormLogin,
                              suffixIcon:
                                  const Icon(FontAwesomeIcons.user, size: 15.0),
                              error: state.errorValidUserName,
                              keyboardType: TextInputType.text,
                              textCapitalization: TextCapitalization.none,
                              minLines: 1,
                              maxLines: 1,
                              fontSize: 14.0,
                              controller: _usernameController,
                              focusElevation: 2.0,
                              onTextChanged: _validateUserName,
                              done: () {},
                            ),

                            //password
                            AppTextFieldInput(
                              hintText: AppStrings.passwordFormLogin,
                              keyboardType: TextInputType.text,
                              textCapitalization: TextCapitalization.none,
                              suffixIcon:
                                  // const Icon(FontAwesomeIcons.eye, size: 15.0),
                                  IconButton(
                                      icon: Icon(
                                          state.obscureText
                                              ? FontAwesomeIcons.eye
                                              : FontAwesomeIcons.eyeSlash,
                                          size: 15.0),
                                      onPressed: () {
                                        _clickShowPassword();
                                      }),
                              minLines: 1,
                              fontSize: 14.0,
                              obscureText: state.obscureText,
                              error: state.errorValidPassword,
                              controller: _passwordController,
                              onTextChanged: _validatePassword,
                              focusElevation: 2.0,
                              done: () {},
                            ),
                            const SizedBox(height: 8.0),
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
