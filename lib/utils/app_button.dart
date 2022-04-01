import 'package:flutter/material.dart';
import 'package:manage_studio/resources/colors.dart';

class AppButton extends StatelessWidget {
  final double? height, width;
  final Color? color, textColor;
  final Function() onTap;
  final String text;
  final double? fontSize, circular;

  const AppButton({
    Key? key,
    this.height,
    this.width,
    this.color,
    this.textColor,
    required this.onTap,
    required this.text,
    this.fontSize,
    this.circular,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height ?? 35.0,
        width: width ?? 150.0,
        decoration: BoxDecoration(
            color: color ?? AppColors.primaryColor,
            borderRadius: BorderRadius.circular(circular ?? 5.0)),
        child: Center(
          child: Text(text,
              maxLines: 1,
              style: TextStyle(
                  decoration: TextDecoration.none,
                  fontFamily: 'AvoBold',
                  fontSize: fontSize,
                  color: textColor ?? Colors.black,
                  overflow: TextOverflow.clip)),
        ),
      ),
    );
  }
}
