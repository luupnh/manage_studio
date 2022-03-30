// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:manage_studio/resources/colors.dart';
//
// class TextFormLogin extends StatelessWidget {
//   final bool? isError;
//   final ValueChanged<String>? onTextChanged;
//   final ValueChanged<String>? onTextValidator;
//
//   final FocusNode? focusNode;
//   final Widget? icon;
//   final String? hintText;
//   final Color? hintTextColor;
//   final Color? textColor;
//   final Color? backgroundColor;
//   final int? maxLength;
//   final TextEditingController? controller;
//   final TextInputType? keyboardType;
//   final Widget? suffixIcon;
//   final bool? obscureText;
//   final FocusNode? nextFocus;
//   final String? error;
//   final int? maxLines;
//   final int? minLines;
//   final double? fontSize;
//   final TextCapitalization? textCapitalization;
//   final bool enabled;
//
//   const TextFormLogin({Key? key,
//     this.isError,
//     this.onTextChanged,
//     this.focusNode,
//     this.icon,
//     this.hintText,
//     this.hintTextColor,
//     this.textColor,
//     this.backgroundColor,
//     this.maxLength,
//     this.controller,
//     this.keyboardType,
//     this.suffixIcon,
//     this.obscureText,
//     this.nextFocus,
//     this.error,
//     this.maxLines,
//     this.minLines,
//     this.fontSize,
//     this.textCapitalization,
//     required this.enabled,
//     this.onTextValidator})
//       : super(key: key);
//   final double focusElevation = 6.0;
//   final _errorElevation = 1.0;
//
//   @override
//   Widget build(BuildContext context) {
//     Color fillColor = enabled ? (backgroundColor!=null ? backgroundColor! : Colors.white) : Colors.grey;
//
//     return Material(
//       color: Colors.white,
//       elevation:
//       (isError != null && isError!) ? _errorElevation : focusElevation,
//       borderRadius: BorderRadius.circular(8.0),
//       child: Theme(
//         data: Theme.of(context).copyWith(
//             colorScheme: Theme
//                 .of(context)
//                 .colorScheme
//                 .copyWith(primary: ColorsCustom.primaryColor)),
//         child: TextFormField(
//           validator: " " onTextValidator,
//           cursorColor: ColorsCustom.primaryColor,
//           onChanged: onTextChanged,
//           textAlign: TextAlign.start,
//           controller: controller,
//           focusNode: focusNode,
//           decoration: InputDecoration(
//             counterText: "",
//             filled: true,
//             fillColor: fillColor,
//             icon: icon,
//             suffixIcon: suffixIcon,
//             border: const OutlineInputBorder(
//               borderRadius: BorderRadius.all(Radius.circular(8.0)),
//               borderSide: BorderSide(color: Colors.grey),
//             ),
//             // focusedBorder: OutlineInputBorder(
//             //     borderRadius: const BorderRadius.all(Radius.circular(8.0)),
//             //     borderSide: focusNode != null && focusNode?.hasFocus == true
//             //         ? BorderSide(color: Colors.black.withOpacity(0.8))
//             //         : (isError
//             //             ? const BorderSide(color: ColorsCustom.primaryColor)
//             //             : const BorderSide(color: Colors.red))),
//             // enabledBorder: OutlineInputBorder(
//             //     borderRadius: const BorderRadius.all(Radius.circular(8.0)),
//             //     borderSide: focusNode != null && focusNode?.hasFocus == true
//             //         ? BorderSide(color: Colors.black.withOpacity(0.8))
//             //         : (isError
//             //             ? const BorderSide(color: ColorsCustom.primaryColor)
//             //             : const BorderSide(color: Colors.red))),
//             disabledBorder: const OutlineInputBorder(
//               borderSide: BorderSide(color: Colors.yellow),
//             ),
//             hintText: hintText,
//             hintStyle: TextStyle(fontSize: fontSize, color: hintTextColor),
//           ),
//           minLines: minLines,
//           maxLines: maxLines,
//           maxLength: maxLength,
//           obscureText: obscureText ?? false,
//           enabled: enabled,
//           style: TextStyle(fontSize: fontSize, color: textColor),
//           autocorrect: false,
//         ),
//       ),
//     );
//   }
// }
//
// class AppTextField extends StatelessWidget {
//   final ValueChanged<String>? onTextChanged;
//   final double focusElevation;
//   final _errorElevation = 1.0;
//   final _radius = 8.0;
//
//   final FocusNode? focusNode;
//   final Widget? icon;
//   final String hintText;
//   final Color hintTextColor;
//   final Color textColor;
//   final Color backgroundColor;
//   final int? maxLength;
//   final TextEditingController? controller;
//   final TextInputType keyboardType;
//   final Widget? suffixIcon;
//   final bool obscureText;
//   final FocusNode? nextFocus;
//   final String? error;
//   final int maxLines;
//   final int minLines;
//   final double fontSize;
//   final TextCapitalization textCapitalization;
//   final bool enabled;
//   final bool isError;
//
//   const AppTextField({
//     Key? key,
//     this.onTextChanged,
//     this.focusElevation = 6.0,
//     this.focusNode,
//     this.icon,
//     this.hintText = "",
//     this.initialValue,
//     this.hintTextColor = Colors.black45,
//     this.textColor = Colors.black,
//     this.backgroundColor = Colors.white,
//     this.maxLength,
//     this.controller,
//     this.keyboardType = TextInputType.text,
//     this.suffixIcon,
//     this.obscureText = false,
//     this.textInputAction = TextInputAction.next,
//     this.nextFocus,
//     this.error,
//     this.maxLines = 1,
//     this.minLines = 1,
//     this.inputFormatter,
//     required this.done,
//     this.fontSize = 16,
//     this.textCapitalization = TextCapitalization.sentences,
//     this.contentPadding =
//     const EdgeInsets.symmetric(vertical: 20, horizontal: 13),
//     this.enabled = true,
//     this.isError = false,
//   }) : super(key: key); //false
//
//   @override
//   Widget build(BuildContext context) {
//     Color fillColor = enabled ? backgroundColor : Colors.grey;
//
//     return Padding(
//       padding: EdgeInsets.all(focusElevation),
//       child: Material(
//         color: Colors.white,
//         elevation: isError ? _errorElevation : focusElevation,
//         shadowColor: focusNode != null && focusNode?.hasFocus == true
//             ? ColorsCustom.primaryColor
//             : (isError ? Colors.red : Colors.transparent),
//         borderRadius: BorderRadius.circular(_radius),
//         child: Theme(
//           data: Theme.of(context).copyWith(
//               colorScheme: Theme
//                   .of(context)
//                   .colorScheme
//                   .copyWith(primary: ColorsCustom.primaryColor)),
//           child: TextFormField(
//             cursorColor: ColorsCustom.primaryColor,
//             onChanged: onTextChanged,
//             textAlign: TextAlign.start,
//             controller: controller,
//             initialValue: initialValue,
//             focusNode: focusNode,
//             textInputAction: textInputAction,
//             textCapitalization: textCapitalization,
//             inputFormatters: inputFormatter,
//             decoration: InputDecoration(
//               counterText: "",
//               filled: true,
//               fillColor: fillColor,
//               contentPadding: contentPadding,
//               icon: icon,
//               suffixIcon: suffixIcon,
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.all(Radius.circular(_radius)),
//                 borderSide: const BorderSide(color: Colors.grey),
//               ),
//               focusedBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.all(Radius.circular(_radius)),
//                   borderSide: focusNode != null && focusNode?.hasFocus == true
//                       ? BorderSide(color: Colors.black.withOpacity(0.8))
//                       : (isError
//                       ? const BorderSide(color: ColorsCustom.primaryColor)
//                       : const BorderSide(color: Colors.red))),
//               enabledBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.all(Radius.circular(_radius)),
//                   borderSide: focusNode != null && focusNode?.hasFocus == true
//                       ? BorderSide(color: Colors.black.withOpacity(0.8))
//                       : (isError
//                       ? const BorderSide(color: ColorsCustom.primaryColor)
//                       : const BorderSide(color: Colors.red))),
//               disabledBorder: const OutlineInputBorder(
//                 borderSide: BorderSide(color: Colors.yellow),
//               ),
//               hintText: hintText,
//               hintStyle: TextStyle(fontSize: fontSize, color: hintTextColor),
//               errorText: focusNode != null && focusNode?.hasFocus == true
//                   ? null
//                   : (!isError ? null : "Thoong tin khong hop le"),
//             ),
//             minLines: minLines,
//             maxLines: maxLines,
//             maxLength: maxLength,
//             obscureText: obscureText,
//             keyboardType: textInputAction == TextInputAction.newline
//                 ? TextInputType.multiline
//                 : keyboardType,
//             enabled: enabled,
//             style: TextStyle(fontSize: fontSize, color: textColor),
//             onFieldSubmitted: (v) {
//               if (textInputAction == TextInputAction.next) {
//                 FocusScope.of(context).requestFocus(nextFocus);
//               } else if (textInputAction == TextInputAction.done) {
//                 done();
//               }
//             },
//             autocorrect: false,
//           ),
//         ),
//       ),
//     );
//   }
// }
