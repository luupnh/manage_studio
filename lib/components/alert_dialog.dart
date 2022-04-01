import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:manage_studio/components/commons.dart';
import 'package:manage_studio/resources/colors.dart';
import 'package:manage_studio/utils/app_textfield_input_form.dart';

const _fontFamily = 'AvoNormal';

class SimpleAlertDialog extends StatelessWidget {
  final Widget? icon;
  final String? title;
  final List<TextSpan>? content;
  final List<SimpleAlertDialogAction>? actions;
  final bool hasInputForm;
  final TextEditingController? inputFormController;
  final String? inputFormHint;

  get textInput => inputFormController?.text ?? "";

  const SimpleAlertDialog({
    Key? key,
    this.icon,
    this.title,
    this.content,
    this.actions,
    this.hasInputForm = false,
    this.inputFormController,
    this.inputFormHint,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20),
      /**
       * dialog card
       */
      child: _buildCardDialog(),
    );
  }

  _buildCardDialog() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 54, left: 30, right: 30, bottom: 25),
              /**
               * dialog content
               */
              child: _buildDialogContent(),
            ),
          ),
        ),
      ],
    );
  }

  _buildDialogContent() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        _buildIcon(),
        _buildTitle(),
        _buildContent(),
        _buildActions(),
      ],
    );
  }

  _buildIcon() {
    return Container(
      child: this.icon,
      margin: const EdgeInsets.only(bottom: 32),
    );
  }

  _buildTitle() {
    return Container(
      child: Text(
        title ?? "",
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontFamily: _fontFamily,
          fontSize: 24,
          fontWeight: FontWeight.w500,
          fontStyle: FontStyle.normal,
          color: AppColors.black_08,
        ),
      ),
      margin: const EdgeInsets.only(bottom: 18),
    );
  }

  _buildContent() {
    List<Widget> _contents = <Widget>[
      Padding(
        padding: const EdgeInsets.only(left: 22, right: 22),
        child: RichText(
          text: TextSpan(
            /**
             * content
             */
            children: this.content,
            // default style
            style: const TextStyle(
              fontFamily: _fontFamily,
              fontSize: 14,
              fontWeight: FontWeight.normal,
              fontStyle: FontStyle.normal,
              color: AppColors.black_06,
            ),
          ),
          textAlign: TextAlign.center,
        ),
      ),
    ];
    if (hasInputForm) {
      _contents.add(boxHeight(26));
      _contents.add(AppTextFieldInput.white(
        controller: inputFormController ?? TextEditingController(),
        hintText: inputFormHint,
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.done,
        textCapitalization: TextCapitalization.sentences,
        minLines: 3,
      ));
    }
    return Container(
      /**
       * format text by RichText
       */
      child: Column(children: _contents),
      alignment: Alignment.center,
    );
  }

  _buildActions() {
    return Container(
      child: SingleChildScrollView(
        reverse: true,
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: actions ?? [],
        ),
      ),
      margin: EdgeInsets.only(top: hasInputForm ? 35 : 63),
      alignment: Alignment.bottomRight,
    );
  }
}

class SimpleAlertDialogAction extends StatelessWidget {
  final SimpleAlertDialogActionType? type;
  final String? name;
  final Function()? action;

  const SimpleAlertDialogAction({
    Key? key,
    this.type,
    this.name,
    this.action,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// default style
    var _textColor = AppColors.black_06;
    var _fontWeight = FontWeight.w500;

    switch (type) {
      case SimpleAlertDialogActionType.CONFIRM:
        _textColor = AppColors.orange;
        _fontWeight = FontWeight.w500;
        break;
      case SimpleAlertDialogActionType.POSITIVE:
        _textColor = AppColors.red;
        _fontWeight = FontWeight.w600;
        break;
      case SimpleAlertDialogActionType.UPDATE:
        _textColor = AppColors.blue;
        _fontWeight = FontWeight.w600;
        break;
      case SimpleAlertDialogActionType.NEGATIVE:
        break;
      default:
    }

    return FlatButton(
      color: Colors.transparent,
      textColor: _textColor,
      child: Text(
        name ?? "No name",
        style: TextStyle(
          fontFamily: _fontFamily,
          fontSize: 18,
          fontWeight: _fontWeight,
        ),
      ),
      onPressed: action ??
          () {
            /**
             * action default
             */
            Navigator.of(context).pop();
          },
    );
  }
}

enum SimpleAlertDialogActionType {
  NEGATIVE,
  POSITIVE,
  UPDATE,
  CONFIRM,
  /**
   * add other if needed
   */
}
