import 'package:flutter/material.dart';
import 'package:manage_studio/resources/app_icon.dart';
import 'package:manage_studio/resources/app_string.dart';
import 'package:manage_studio/resources/colors.dart';
import 'package:manage_studio/resources/images.dart';

class AverageWidget extends StatelessWidget {
  const AverageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      height: 90.0,
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: AppColors.backgroundColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("20",
                    maxLines: 1,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontFamily: 'AvoBold',
                        fontSize: 14,
                        color: AppColors.textColorsBlack,
                        overflow: TextOverflow.clip)),
                Text(AppStrings.averageProductBill,
                    maxLines: 2,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontFamily: 'AvoNormal',
                        fontSize: 10,
                        color: AppColors.textColorsGrey,
                        overflow: TextOverflow.clip)),
              ],
            ),
          ),
          SizedBox(height: 40.0, width: 40.0, child: AppIcon(Images.iError)),
        ],
      ),
    ));
  }
}
