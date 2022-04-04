import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:manage_studio/resources/app_icon.dart';
import 'package:manage_studio/resources/app_string.dart';
import 'package:manage_studio/resources/colors.dart';
import 'package:manage_studio/resources/images.dart';

class DialogBuilder {
  DialogBuilder(this.context);

  final BuildContext context;

  // Future<T?> LoadingIndicator<T>({String? text}) {
  //   return showDialog(
  //       barrierDismissible: false,
  //       context: context,
  //       builder: (_) {
  //         return WillPopScope(
  //           onWillPop: () async => false,
  //           child: Center(
  //             child: Column(
  //                 mainAxisAlignment: MainAxisAlignment.center,
  //                 crossAxisAlignment: CrossAxisAlignment.center,
  //                 children: const [
  //                   CupertinoActivityIndicator(
  //                     color: AppColors.waitingIndicator,
  //                     radius: 10.0,
  //                     animating: true,
  //                   ),
  //                   SizedBox(height: 2.0),
  //                   Text(
  //                     AppStrings.waitPlease,
  //                     style: TextStyle(
  //                         fontFamily: 'AvoNormal',
  //                         fontSize: 12,
  //                         decoration: TextDecoration.none,
  //                         color: AppColors.waitingIndicator),
  //                   ),
  //                 ]),
  //           ),
  //         );
  //       });
  // }
  //
  // void popDialog() {
  //   Navigator.of(context).pop();
  // }

  void showDialogLoading({String? text, Function()? function}) async {
    // LoadingIndicator(text: text);
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (_) {
          return WillPopScope(
            onWillPop: () async => false,
            child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    CupertinoActivityIndicator(
                      color: AppColors.waitingIndicator,
                      radius: 10.0,
                      animating: true,
                    ),
                    SizedBox(height: 2.0),
                    Text(
                      AppStrings.waitPlease,
                      style: TextStyle(
                          fontFamily: 'AvoNormal',
                          fontSize: 12,
                          decoration: TextDecoration.none,
                          color: AppColors.waitingIndicator),
                    ),
                  ]),
            ),
          );
        });
    await Future.delayed(Duration(seconds: 1), () {
      Navigator.of(context).pop();
      function?.call();
    });
  }

  void showDialogError() {
    final dialogType = DialogType.error;
    showDialog(
        context: context,
        builder: (_) {
          return WillPopScope(
            onWillPop: () async => true,
            child: Center(
              child: Container(
                height: 100.0,
                width: 100.0,
                decoration: BoxDecoration(
                    color: AppColors.backgroundColor,
                    borderRadius: BorderRadius.circular(10.0)),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                          height: 40.0, width: 40.0, child: dialogType.icon),
                      SizedBox(height: 10.0),
                      Text(dialogType.title,
                          maxLines: 1,
                          style: TextStyle(
                              fontFamily: 'AvoNormal',
                              fontSize: 12,
                              decoration: TextDecoration.none,
                              color: AppColors.textColorsBlack)),
                    ]),
              ),
            ),
          );
        });
  }
}

enum DialogType { error, warning, success }

extension DialogTypeExtension on DialogType {
  String get title {
    switch (this) {
      case DialogType.error:
        return AppStrings.error;
      case DialogType.success:
        return AppStrings.success;
      case DialogType.warning:
        return AppStrings.warning;
      default:
        return '';
    }
  }

  Widget get icon {
    switch (this) {
      case DialogType.error:
        return AppIcon(Images.iError);
      case DialogType.success:
        return AppIcon(Images.iSuccess);
      case DialogType.warning:
        return AppIcon(Images.iWarning);
      default:
        return SizedBox();
    }
  }

  String get dismissTitle {
    return AppStrings.close;
  }
}
