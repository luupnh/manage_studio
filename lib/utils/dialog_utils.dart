import 'package:flutter/material.dart';
import 'package:manage_studio/components/alert_dialog.dart';
import 'package:manage_studio/components/commons.dart';
import 'package:manage_studio/resources/app_icon.dart';
import 'package:manage_studio/resources/app_string.dart';
import 'package:manage_studio/resources/images.dart';

enum DialogType { success, error, warning, delete, reject, refresh }

extension DialogTypeExtension on DialogType {
  String get title {
    switch (this) {
      case DialogType.success:
        return AppStrings.success;
      case DialogType.error:
        return AppStrings.error;
      case DialogType.warning:
        return AppStrings.warming;
      case DialogType.refresh:
        return AppStrings.updateIsHere;
      case DialogType.delete:
      case DialogType.reject:
        return AppStrings.deleteQuestion;
      default:
        return '';
    }
  }

  Widget get icon {
    switch (this) {
      case DialogType.success:
        return const AppIcon(Images.iSuccess);
      case DialogType.error:
        return const AppIcon(Images.iError);
      case DialogType.reject:
        return const AppIcon(Images.iReject);
      case DialogType.warning:
        return const AppIcon(Images.iWarning);
      case DialogType.delete:
        return const AppIcon(Images.iDelete);
      case DialogType.refresh:
        return const AppIcon(Images.iRefresh);
      default:
        return const SizedBox();
    }
  }

  String get dismissTitle {
    return AppStrings.close;
  }
}

showConfirmDialogWithReason(
  BuildContext context, {
  Widget? icon,
  String? title,
  String? inputHint,
  String? actionName,
  SimpleAlertDialogActionType? actionType,
  Function(String)? action,
  Function()? cancelAction,
  List<TextSpan>? content,
}) {
  showDialog(
      useRootNavigator: false,
      barrierDismissible: true,
      context: context,
      builder: (BuildContext context) {
        TextEditingController controller = TextEditingController();
        return SystemPadding(
          child: Center(
            child: SingleChildScrollView(
              child: SimpleAlertDialog(
                icon: icon ?? const SizedBox(),
                title: title ?? AppStrings.areYouSure,
                content: content ?? [],
                hasInputForm: true,
                inputFormController: controller,
                inputFormHint: inputHint ?? AppStrings.writeReason,
                actions: <SimpleAlertDialogAction>[
                  SimpleAlertDialogAction(
                    type: SimpleAlertDialogActionType.NEGATIVE,
                    name: AppStrings.cancel,
                    action: cancelAction,
                  ),
                  SimpleAlertDialogAction(
                    type: actionType ?? SimpleAlertDialogActionType.UPDATE,
                    name: actionName ?? AppStrings.ok,
                    action: () {
                      if (action != null) {
                        action(controller.text);
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      });
}
