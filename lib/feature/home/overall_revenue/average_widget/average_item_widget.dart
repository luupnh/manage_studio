import 'package:flutter/material.dart';
import 'package:manage_studio/resources/app_string.dart';
import 'package:manage_studio/resources/colors.dart';

class AverageItemWidget extends StatelessWidget {
  const AverageItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      height: 90.0,
      decoration: BoxDecoration(
        color: AppColors.backgroundColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Stack(
        children: [
          Container(
            padding:
                EdgeInsets.only(right: 50.0, left: 16.0, bottom: 8.0, top: 8.0),
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
          Positioned(
            top: 40.0,
            right: -10.0,
            child: Container(
              height: 60.0,
              width: 60.0,
              child: CircleAvatar(
                backgroundColor: AppColors.shadowIconAverage,
              ),
            ),
          )
        ],
      ),
    ));
  }
}
