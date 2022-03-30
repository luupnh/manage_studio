import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:manage_studio/components/check_box.dart';
import 'package:manage_studio/feature/login/login_bloc.dart';
import 'package:manage_studio/feature/login/login_event.dart';
import 'package:manage_studio/feature/login/login_state.dart';
import 'package:manage_studio/resources/colors.dart';
import 'package:manage_studio/resources/images.dart';

import '../../utils/textfileds.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  final TextEditingController _usernameController = TextEditingController();
  final _usernameFocusNode = FocusNode();

  final TextEditingController _passwordController = TextEditingController();
  final _passwordFocusNode = FocusNode();
  late LoginBloc bloc;

  @override
  void dispose() {
    super.dispose();
    _usernameController.dispose();
    _passwordController.dispose();
    _usernameFocusNode.dispose();
    _passwordFocusNode.dispose();
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
  _validateUserName(String name) {
    bloc.add(ValidateUserName(name));
    print("oke 2"+_usernameController.text.trim());
    print("oke 3     "+ _usernameFocusNode.toString());
  }

  _validatePassword() =>
      LoginBloc().add(ValidatePassword(_passwordController.text));

  Widget _buildBody(BuildContext context, LoginState state) {
    var paddingTotal = MediaQuery.of(context).viewPadding.top;
    return BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
              if(state.isLoading) {
                return Container(color: Colors.red);
              } else {
                return Material(
                  color: ColorsCustom.backgroundColor,
                  child: Container(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).viewPadding.top,
                        bottom: MediaQuery.of(context).viewPadding.bottom),
                    color: ColorsCustom.shadowColor,
                    child: Container(
                      margin: EdgeInsets.only(
                          top: paddingTotal,
                          bottom: paddingTotal,
                          right: paddingTotal / 2,
                          left: paddingTotal / 2),
                      decoration: BoxDecoration(
                          color: ColorsCustom.backgroundColor,
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Center(
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              //logo
                              Container(
                                height: 150.0,
                                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                                child: Image.asset(Images.logo_login, fit: BoxFit.fill),
                              ),
                              const SizedBox(height: 8.0),
                              //form login
                              Container(
                                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    AppTextField(
                                      hintText: "SĐT hoặc email",
                                      suffixIcon:
                                      const Icon(FontAwesomeIcons.user, size: 15.0),
                                      error:"Thông tin nhập vào không hợp lệ",
                                      keyboardType: TextInputType.text,
                                      isError: !state.isValidUserName,
                                      // textInputAction: textInputAction,
                                      textCapitalization: TextCapitalization.none,
                                      minLines: 1,
                                      maxLines: 1,
                                      fontSize: 14.0,
                                      controller: _usernameController,
                                      focusNode: _usernameFocusNode,
                                      // nextFocus: nextFocus,
                                      focusElevation: 2.0,
                                      // enabled: field.control.enabled,
                                      onTextChanged: _validateUserName,
                                      done: () {},
                                    ),
                                    AppTextField(
                                      hintText: "Mật khẩu",
                                      keyboardType: TextInputType.text,
                                      textCapitalization: TextCapitalization.none,
                                      suffixIcon: const Icon(
                                        FontAwesomeIcons.eye,
                                        size: 15.0,
                                      ),
                                      minLines: 1,
                                      fontSize: 14.0,
                                      obscureText: true,
                                      error: state.isValidPassword ? "" : "Thông tin không hợp lệ",
                                      controller: _passwordController,
                                      onTextChanged: _validatePassword(),
                                      focusNode: _passwordFocusNode,
                                      focusElevation: 2.0,
                                      enabled: true,
                                      done: () {},
                                    ),
                                    const SizedBox(height: 8.0),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        CheckBoxWidget(
                                          onChange: (value) {},
                                          isChecked: true,
                                          textLeftCheckBox: "Ghi nhớ đăng nhập",
                                        ),
                                        const Text("Quên mật khẩu?",
                                            maxLines: 1,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                decoration: TextDecoration.none,
                                                fontFamily: 'AvoNormal',
                                                fontSize: 12,
                                                color: ColorsCustom.textLogin,
                                                overflow: TextOverflow.clip)),
                                      ],
                                    ),
                                    const SizedBox(height: 10.0),
                                    Container(
                                      height: 35.0,
                                      width: 150.0,
                                      decoration: BoxDecoration(
                                          color: ColorsCustom.primaryColor,
                                          borderRadius: BorderRadius.circular(5.0)),
                                      child: const Center(
                                        child: Text("Đăng nhập",
                                            maxLines: 1,
                                            style: TextStyle(
                                                decoration: TextDecoration.none,
                                                fontFamily: 'AvoBold',
                                                fontSize: 14,
                                                color: ColorsCustom.textLoginSecond,
                                                overflow: TextOverflow.clip)),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(height: 8.0),

                              //footer
                              Center(
                                child: FittedBox(
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 16.0, left: 16.0, top: 20.0, bottom: 10.0),
                                    child: const Text(
                                        "Hotline hỗ trợ: 0327631921 \n\ Hỗ trợ khách hàng các ngày trong tuần từ \n\ "
                                            "thứ 2 đến Chủ nhật (từ 8h00 – 22h00 hàng ngày)",
                                        maxLines: 3,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            decoration: TextDecoration.none,
                                            fontFamily: 'AvoNormal',
                                            fontSize: 14,
                                            color: ColorsCustom.textLogin,
                                            overflow: TextOverflow.clip)),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 8.0),
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

  void _handleAction(BuildContext context, LoginState state) {}
}
