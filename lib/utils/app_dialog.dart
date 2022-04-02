import 'package:flutter/material.dart';
import 'package:manage_studio/components/alert_dialog.dart';
import 'package:manage_studio/resources/app_string.dart';
import 'package:manage_studio/utils/dialog_utils.dart';

Future<void> showMyDialog(BuildContext context) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: Container(
          color: Colors.red,
        ),
        content: SingleChildScrollView(
          child: ListBody(
            children: const <Widget>[
              Text('This is a demo alert dialog.'),
              Text('Would you like to approve of this message?'),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('Approve'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}


showErrorDialogWith(error, BuildContext context) {
  var _errorMessage = error;
  // if (error is HttpError) {
  //   if (error.code == 401) {
  //     transferAndRemoveAll(context, LoginWidget());
  //     return;
  //   }
  //   _errorMessage = error.message;
  // } else if (error is String) {
  //   _errorMessage = error;
  // } else if (error is Error) {
  //   _errorMessage = error.toString();
  // } else {
  //   _errorMessage = null;
  // }

  final type = DialogType.error;

  showDialog(
      useRootNavigator: false,
      barrierDismissible: true,
      context: context,
      builder: (BuildContext context) {
        return Center(
          child: SimpleAlertDialog(
            icon: type.icon,
            title: type.title,
            content: <TextSpan>[
              TextSpan(
                text: _errorMessage ?? AppStrings.tryAgain,
              ),
            ],
            actions: <SimpleAlertDialogAction>[
              SimpleAlertDialogAction(
                type: SimpleAlertDialogActionType.CONFIRM,
                name: type.dismissTitle,
              ),
            ],
          ),
        );
      });
}
