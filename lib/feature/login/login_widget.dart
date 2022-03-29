import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:manage_studio/components/check_box.dart';
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

  @override
  void dispose() {
    super.dispose();
    _usernameController.dispose();
    _passwordController.dispose();
    _usernameFocusNode.dispose();
    _passwordFocusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var paddingTotal = MediaQuery.of(context).viewPadding.top;
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
              right: paddingTotal /2,
              left: paddingTotal /2),
          decoration: BoxDecoration(
              color: ColorsCustom.backgroundColor,
              borderRadius: BorderRadius.circular(20.0)),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
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
                          hintText: "Mật khẩu",
                          suffixIcon:
                              const Icon(FontAwesomeIcons.user, size: 15.0),
                          error: "Thông tin nhập vào bị lỗi",
                          keyboardType: TextInputType.text,
                          // textInputAction: textInputAction,
                          textCapitalization: TextCapitalization.none,
                          minLines: 1,
                          maxLines: 1,
                          fontSize: 14.0,
                          controller: _passwordController,
                          // focusNode: focusNode,
                          // nextFocus: nextFocus,
                          focusElevation: 2.0,
                          // enabled: field.control.enabled,
                          // onTextChanged: field.didChange,
                          done: () {},
                        ),
                        AppTextField(
                          hintText: "SĐT hoặc Email",
                          keyboardType: TextInputType.text,
                          textCapitalization: TextCapitalization.none,
                          suffixIcon: const Icon(
                            FontAwesomeIcons.eye,
                            size: 15.0,
                          ),
                          minLines: 1,
                          fontSize: 14.0,
                          obscureText: true,
                          error: "Thông tin nhập vào bị lỗi",
                          controller: _usernameController,
                          // focusNode: focusNode,
                          // nextFocus: nextFocus,
                          focusElevation: 2.0,
                          enabled: true,
                          // onTextChanged: field.didChange,
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
                        child: Column(
                          children: const [
                            Text(
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
                          ],
                        ),
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
}
