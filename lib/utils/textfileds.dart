import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:manage_studio/resources/colors.dart';

class AppTextField extends StatelessWidget {

  //field final
  final ValueChanged<String>? onTextChanged;
  final double focusElevation;
  final _errorElevation = 1.0;
  final _radius = 8.0;

  final FocusNode? focusNode;
  final Widget? icon;
  final String hintText;
  final String? initialValue;
  final Color hintTextColor;
  final Color textColor;
  final Color backgroundColor;
  final int? maxLength;
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final Widget? suffixIcon;
  final bool obscureText;
  final TextInputAction textInputAction;
  final FocusNode? nextFocus;
  final String? error;
  final int maxLines;
  final int minLines;
  final List<TextInputFormatter>? inputFormatter;
  final Function done;
  final double fontSize;
  final TextCapitalization textCapitalization;
  final EdgeInsetsGeometry contentPadding;
  final bool enabled;
  final bool isError;

  //constructor
  const AppTextField({
    Key? key,
    this.onTextChanged,
    this.focusElevation = 6.0,
    this.focusNode,
    this.icon,
    this.hintText = "",
    this.initialValue,
    this.hintTextColor = Colors.black45,
    this.textColor = Colors.black,
    this.backgroundColor = Colors.white,
    this.maxLength,
    this.controller,
    this.keyboardType = TextInputType.text,
    this.suffixIcon,
    this.obscureText = false,
    this.textInputAction = TextInputAction.next,
    this.nextFocus,
    this.error,
    this.maxLines = 1,
    this.minLines = 1,
    this.inputFormatter,
    required this.done,
    this.fontSize = 16,
    this.textCapitalization = TextCapitalization.sentences,
    this.contentPadding =
        const EdgeInsets.symmetric(vertical: 20, horizontal: 13),
    this.enabled = true,
    this.isError = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color fillColor = enabled ? backgroundColor : Colors.grey;

    return Padding(
      padding: EdgeInsets.all(focusElevation),
      child: Material(
        color: Colors.white,
        borderRadius: BorderRadius.circular(_radius),
        child: Theme(
          data: Theme.of(context).copyWith(
              colorScheme: Theme.of(context)
                  .colorScheme
                  .copyWith(primary: ColorsCustom.primaryColor)),
          child: TextFormField(
            cursorColor: ColorsCustom.primaryColor,
            onChanged: onTextChanged,
            textAlign: TextAlign.start,
            controller: controller,
            initialValue: initialValue,
            focusNode: focusNode,
            textInputAction: textInputAction,
            textCapitalization: textCapitalization,
            inputFormatters: inputFormatter,
            decoration: InputDecoration(
              counterText: "",
              filled: true,
              fillColor: fillColor,
              contentPadding: contentPadding,
              icon: icon,
              suffixIcon: suffixIcon,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(_radius)),
                borderSide: const BorderSide(color: Colors.grey),
              ),
              // focusedBorder: OutlineInputBorder(
              //   borderRadius: BorderRadius.all(Radius.circular(_radius)),
              //   borderSide: focusNode != null && focusNode?.hasFocus == true
              //             ?
              //   // borderSide: isError
              //   //     ? const BorderSide(color: Colors.red, width: 1)
              //   //     : const BorderSide(
              //   //         color: ColorsCustom.primaryColor, width: 1),
              // ),
              // enabledBorder: OutlineInputBorder(
              //     borderRadius: BorderRadius.all(Radius.circular(_radius)),
              //     borderSide: focusNode != null && focusNode?.hasFocus == true
              //         ? BorderSide(color: Colors.black.withOpacity(0.8))
              //         : (isError
              //             ? const BorderSide(color: Colors.red)
              //             : const BorderSide(
              //                 color: ColorsCustom.primaryColor, width: 1))
              //     // borderSide: isError
              //     //     ? const BorderSide(color: Colors.red)
              //     //     : BorderSide(color: Colors.black.withOpacity(0.8)),
              //     ),
              disabledBorder: const OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
              hintText: hintText,
              hintStyle: TextStyle(fontSize: fontSize, color: hintTextColor),
              errorText: (error == "ok" ? null : error),
            ),
            minLines: minLines,
            maxLines: maxLines,
            maxLength: maxLength,
            obscureText: obscureText,
            // keyboardType: textInputAction == TextInputAction.newline
            //     ? TextInputType.multiline
            //     : keyboardType,
            enabled: enabled,
            style: TextStyle(fontSize: fontSize, color: textColor),
            onFieldSubmitted: (v) {
              if (textInputAction == TextInputAction.next) {
                FocusScope.of(context).requestFocus(nextFocus);
              } else if (textInputAction == TextInputAction.done) {
                done();
              }
            },
            autocorrect: false,
          ),
        ),
      ),
    );
  }
}
