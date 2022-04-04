import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:manage_studio/resources/colors.dart';

class Images {
  Images._();

  static const String logo = 'assets/images/logo.png';
  static const String logoLogin = 'assets/images/logo_login.png';

  static const String iSuccess = 'assets/icons/i_success.svg';
  static const String iError = 'assets/icons/i_error.svg';
  static const String iWarning = 'assets/icons/i_warning.svg';
  static const String iDelete = 'assets/icons/i_delete.svg';
  static const String iRefresh = 'assets/icons/i_refresh.svg';
  static const String iReject = 'assets/icons/i_refresh.svg';
  static const Icon iTitleAppBar = Icon(FontAwesomeIcons.angleDown, size: 14, color: AppColors.textColorsWhite);
  static const Icon iNotification = Icon(FontAwesomeIcons.bell, size: 25, color: AppColors.textColorsWhite);
  static const Icon iCalendarTitleAppBar = Icon(FontAwesomeIcons.calendarMinus , size: 20, color: AppColors.textColorsWhite);

}
