import 'package:flutter/material.dart';

Widget boxHeight(double height) {
  return SizedBox(height: height);
}

Widget boxWidth(double width) {
  return SizedBox(width: width);
}

class SystemPadding extends StatelessWidget {
  final Widget child;

  const SystemPadding({Key? key, required this.child}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return AnimatedContainer(
      padding: mediaQuery.viewInsets,
      duration: const Duration(milliseconds: 300),
      child: child,
    );
  }
}