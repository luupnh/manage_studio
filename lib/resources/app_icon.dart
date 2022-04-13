import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:manage_studio/resources/colors.dart';

class AppIconSvg extends StatelessWidget {
  final String path;
  final Color? color;
  final BoxFit? boxFit;

  const AppIconSvg(this.path, {Key? key, this.color, this.boxFit})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (path.endsWith('.svg')) {
      return SvgPicture.asset(path, color: color);
    }

    return SizedBox(
        child: Image.asset(path, color: color, fit: boxFit ?? BoxFit.fill));
  }
}

class AppIcon {
  static  Icon iTitleAppBar = Icon(FontAwesomeIcons.angleDown, size: 20, color: AppColors.textColorsWhite);
  static const Icon iNotification = Icon(FontAwesomeIcons.bell, size: 20, color: AppColors.textColorsWhite);
  static const Icon iCalendarTitleAppBar = Icon(FontAwesomeIcons.calendarMinus , size: 20, color: AppColors.textColorsWhite);
  static const Icon iDropdown = Icon(FontAwesomeIcons.squareCaretDown , size: 20, color: AppColors.primaryColor);
  static const Icon iCustomer = Icon(FontAwesomeIcons.userLarge , size: 20, color: AppColors.backgroundColor);
  static const Icon iSearch = Icon(FontAwesomeIcons.magnifyingGlass, size: 20);
  static const Icon iPlus = Icon(FontAwesomeIcons.plus, size: 20, color: AppColors.iconCustomer);
  static const Icon iChart = Icon(FontAwesomeIcons.chartLine, size: 20, color: AppColors.iconCustomer);
  static const Icon iUser = Icon(FontAwesomeIcons.user, size: 15.0);
  static const Icon iEyeSlash = Icon(FontAwesomeIcons.eyeSlash, size: 15.0, color: AppColors.iconLogin);
  static const Icon iEye = Icon(FontAwesomeIcons.eye, size: 15.0, color: AppColors.iconLogin);
  static const Icon iFilter = Icon(FontAwesomeIcons.filter, color: AppColors.iconSearchCustomer);


}
