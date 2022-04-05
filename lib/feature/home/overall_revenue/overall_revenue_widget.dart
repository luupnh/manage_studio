import 'package:flutter/material.dart';
import 'package:manage_studio/resources/app_icon.dart';
import 'package:manage_studio/resources/app_string.dart';
import 'package:manage_studio/resources/colors.dart';
import 'package:manage_studio/resources/images.dart';

class OverallRevenueWidget extends StatelessWidget {
  const OverallRevenueWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.0, right: 16.0),
      child: Column(
        children: [
          Container(
            height: 181.0,
            padding: EdgeInsets.only(
              left: 16.0,
              right: 16.0,),
            decoration: BoxDecoration(
                color: AppColors.backgroundColor,
                borderRadius: BorderRadius.circular(10.0)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  height: 90.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(AppStrings.totalRevenue,
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontFamily: 'AvoNormal',
                              fontSize: 14,
                              color: AppColors.textColorsBlack,
                              overflow: TextOverflow.clip)),
                      Text("0đ",
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontFamily: 'AvoBold',
                              fontSize: 30,
                              color: AppColors.textColorsBlue,
                              overflow: TextOverflow.clip))
                    ],
                  ),
                ),
                Container(
                  height: 1,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 90.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: FittedBox(
                          fit: BoxFit.fill,
                          child: Container(
                            padding: EdgeInsets.only(right: 4.0, left: 4.0),
                            height: 50.0,
                            child: Row(
                              children: [
                                SizedBox(
                                    height: 40.0,
                                    width: 40.0,
                                    child: AppIcon(Images.iError)),
                                SizedBox(width: 8.0),
                                Column(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceAround,
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    Text("0",
                                        style: TextStyle(
                                            decoration:
                                            TextDecoration.none,
                                            fontFamily: 'AvoBold',
                                            fontSize: 14,
                                            color:
                                            AppColors.textColorsBlack,
                                            overflow: TextOverflow.clip)),
                                    Text(AppStrings.product,
                                        style: TextStyle(
                                            decoration:
                                            TextDecoration.none,
                                            fontFamily: 'AvoNormal',
                                            fontSize: 10,
                                            color:
                                            AppColors.textColorsGrey,
                                            overflow: TextOverflow.clip)),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(width: 1.0, color: Colors.grey, height: 60.0,),
                      Expanded(
                        child: FittedBox(
                          fit: BoxFit.fill,
                          child: Container(
                            padding: EdgeInsets.only(right: 4.0, left: 4.0),
                            height: 50.0,
                            child: Row(
                              children: [
                                SizedBox(
                                    height: 40.0,
                                    width: 40.0,
                                    child: AppIcon(Images.iError)),
                                SizedBox(width: 8.0),
                                Column(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceAround,
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    Text("0",
                                        style: TextStyle(
                                            decoration:
                                            TextDecoration.none,
                                            fontFamily: 'AvoBold',
                                            fontSize: 14,
                                            color:
                                            AppColors.textColorsBlack,
                                            overflow: TextOverflow.clip)),
                                    Text(AppStrings.product,
                                        style: TextStyle(
                                            decoration:
                                            TextDecoration.none,
                                            fontFamily: 'AvoNormal',
                                            fontSize: 10,
                                            color:
                                            AppColors.textColorsGrey,
                                            overflow: TextOverflow.clip)),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(width: 1.0, color: Colors.grey, height: 60.0,),
                      Expanded(
                        child: FittedBox(
                          fit: BoxFit.fill,
                          child: Container(
                            padding: EdgeInsets.only(right: 4.0, left: 4.0),
                            height: 50.0,
                            child: Row(
                              children: [
                                SizedBox(
                                    height: 40.0,
                                    width: 40.0,
                                    child: AppIcon(Images.iError)),
                                SizedBox(width: 8.0),
                                Column(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceAround,
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    Text("0",
                                        style: TextStyle(
                                            decoration:
                                            TextDecoration.none,
                                            fontFamily: 'AvoBold',
                                            fontSize: 14,
                                            color:
                                            AppColors.textColorsBlack,
                                            overflow: TextOverflow.clip)),
                                    Text(AppStrings.product,
                                        style: TextStyle(
                                            decoration:
                                            TextDecoration.none,
                                            fontFamily: 'AvoNormal',
                                            fontSize: 10,
                                            color:
                                            AppColors.textColorsGrey,
                                            overflow: TextOverflow.clip)),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
