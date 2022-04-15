import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:manage_studio/resources/app_icon.dart';
import 'package:manage_studio/resources/app_string.dart';
import 'package:manage_studio/resources/colors.dart';
import 'package:manage_studio/resources/strings_images.dart';

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
                height: 200.0,
                width: 200.0,
                decoration: BoxDecoration(
                    color: AppColors.backgroundColor,
                    borderRadius: BorderRadius.circular(10.0)),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 200,
                        height: 60.0,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10.0),
                                topRight: Radius.circular(10.0))),
                        child: AppIcon.iError,
                      ),
                      SizedBox(height: 10.0),
                      Expanded(
                        child: Center(
                          child: Text(dialogType.title,
                              maxLines: 1,
                              style: TextStyle(
                                  fontFamily: 'AvoNormal',
                                  fontSize: 12,
                                  decoration: TextDecoration.none,
                                  color: AppColors.textColorsBlack)),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          height: 30.0,
                          width: 80.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.red,
                                  spreadRadius: 1,
                                  blurRadius: 1,
                                  blurStyle: BlurStyle.outer),
                            ],
                          ),
                          child: Center(
                            child: Text(AppStrings.close,
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontFamily: 'AvoNormal',
                                    fontSize: 14,
                                    color: Colors.red,
                                    overflow: TextOverflow.clip)),
                          ),
                        ),
                      ),
                      SizedBox(height: 10.0),
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
        return AppIconSvg(StringImages.iError);
      case DialogType.success:
        return AppIconSvg(StringImages.iSuccess);
      case DialogType.warning:
        return AppIconSvg(StringImages.iWarning);
      default:
        return SizedBox();
    }
  }

  String get dismissTitle {
    return AppStrings.close;
  }
}
