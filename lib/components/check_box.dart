import 'package:flutter/material.dart';
import 'package:manage_studio/resources/colors.dart';
import 'package:manage_studio/utils/string_validator.dart';

class CheckBoxWidget extends StatelessWidget {
  final bool isChecked;

  final Function(bool?) onChange;
  final String? textLeftCheckBox;

  const CheckBoxWidget(
      {Key? key,
      required this.isChecked,
      required this.onChange,
      this.textLeftCheckBox})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox.fromSize(
            size: const Size.fromRadius(13),
            child: Checkbox(
                checkColor: Colors.white,
                value: isChecked,
                activeColor: ColorsCustom.primaryColor,
                onChanged: onChange),
          ),
          if (textLeftCheckBox.isNotNullOrNotEmpty)
            Text(
              textLeftCheckBox!,
              maxLines: 1,
              style: const TextStyle(
                  decoration: TextDecoration.none,
                  fontFamily: 'AvoNormal',
                  fontSize: 12,
                  color: ColorsCustom.textLogin,
                  overflow: TextOverflow.clip),
            )
        ],
      ),
    );
  }
}
