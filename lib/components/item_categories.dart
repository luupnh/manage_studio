import 'package:flutter/material.dart';
import 'package:manage_studio/resources/app_icon.dart';
import 'package:manage_studio/resources/colors.dart';
import 'package:manage_studio/resources/strings_images.dart';
import 'package:manage_studio/utils/string_validator.dart';

class ItemCategories extends StatelessWidget {
  final Color? backgroundPadding;
  final Color? backgroundItem;
  final Color? backgroundColor;
  final ImageProvider? backgroundImage;
  final String? textTitle;
  final String? textValue;
  final double? fontSize;
  final Widget? icon;
  final Function()? onTap;

  const ItemCategories({Key? key,
    this.backgroundPadding,
    this.backgroundItem,
    this.backgroundColor,
    this.backgroundImage,
    this.textTitle,
    this.textValue,
    this.fontSize,
    this.icon,
    this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var fontSize = this.fontSize ?? 14;
    return GestureDetector(
      onTap: onTap,
      child: Container(
          color: backgroundPadding ?? Colors.transparent,
          height: 90.0,
          padding:
          EdgeInsets.only(top: 8.0, bottom: 8.0, right: 16.0, left: 16.0),
          child: Container(
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                color: backgroundItem ?? AppColors.itemCategories,
                borderRadius: BorderRadius.circular(10.0)),
            child: Row(children: [
              SizedBox(
                height: 50.0,
                width: 50.0,
                // child: Image.asset(Images.logoLogin, fit: BoxFit.fill,))
                child: CircleAvatar(
                  backgroundColor: backgroundColor ?? AppColors.backgroundColor,
                  backgroundImage:
                  backgroundImage ?? AssetImage(StringImages.logoLogin),
                ),
              ),
              const SizedBox(width: 16.0),
              Expanded(
                child: Column(
                  mainAxisAlignment: textTitle.isNotNullOrNotEmpty &&
                      textValue.isNotNullOrNotEmpty ? MainAxisAlignment
                      .spaceEvenly : MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (textTitle.isNotNullOrNotEmpty)
                      Text(textTitle!,
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontFamily: 'AvoBold',
                              fontSize: fontSize,
                              color: AppColors.textColorsBlack,
                              overflow: TextOverflow.clip)),
                    if (textValue.isNotNullOrNotEmpty)
                      Text(textValue!,
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontFamily: 'AvoNormal',
                              fontSize: fontSize - 2,
                              color: AppColors.textColorsGrey,
                              overflow: TextOverflow.clip)),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
                width: 30,
                child: icon ?? AppIcon.iDropdown,
              )
            ]),
          )),
    );
  }
}
