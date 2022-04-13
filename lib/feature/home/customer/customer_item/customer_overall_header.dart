import 'package:flutter/material.dart';
import 'package:manage_studio/resources/app_icon.dart';
import 'package:manage_studio/resources/app_string.dart';
import 'package:manage_studio/resources/colors.dart';

class CustomerOverallHeader extends StatelessWidget {
  const CustomerOverallHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          Container(
            height: 180.0,
            padding: EdgeInsets.only(
              left: 16.0,
              right: 16.0,
            ),
            decoration: BoxDecoration(
                color: AppColors.backgroundColor,
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(color: AppColors.borderGrey)
            ),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  height: 80.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(AppStrings.totalCustomer,
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontFamily: 'AvoNormal',
                              fontSize: 14,
                              color: AppColors.textColorsBlack,
                              overflow: TextOverflow.clip)),
                      Text("99",
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontFamily: 'AvoBold',
                              fontSize: 30,
                              color: AppColors.primaryColor,
                              overflow: TextOverflow.clip))
                    ],
                  ),
                ),
                Container(
                  height: 1,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 80.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: FittedBox(
                          fit: BoxFit.fill,
                          child: Container(
                            padding: EdgeInsets.only(right: 6.0, left: 6.0),
                            height: 50.0,
                            child: Row(
                              children: [
                                Container(
                                    height: 40.0,
                                    width: 40.0,
                                    padding: EdgeInsets.all(7.0),
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: AppColors.primaryColor),
                                    child: AppIcon.iCustomer),
                                SizedBox(width: 8.0),
                                Column(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("60",
                                        style: TextStyle(
                                            decoration: TextDecoration.none,
                                            fontFamily: 'AvoBold',
                                            fontSize: 20,
                                            color: AppColors.textColorsBlack,
                                            overflow: TextOverflow.clip)),
                                    Text(AppStrings.newCustomer,
                                        style: TextStyle(
                                            decoration: TextDecoration.none,
                                            fontFamily: 'AvoNormal',
                                            fontSize: 14,
                                            color: AppColors.textColorsGrey,
                                            overflow: TextOverflow.clip)),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 1.0,
                        color: Colors.grey,
                        height: 60.0,
                      ),
                      Expanded(
                        child: FittedBox(
                          fit: BoxFit.fill,
                          child: Container(
                            padding: EdgeInsets.only(right: 6.0, left: 6.0),
                            height: 50.0,
                            child: Row(
                              children: [
                                Container(
                                    height: 40.0,
                                    width: 40.0,
                                    padding: EdgeInsets.all(7.0),
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: AppColors.primaryColor),
                                    child: AppIcon.iCustomer),
                                SizedBox(width: 8.0),
                                Column(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("60",
                                        style: TextStyle(
                                            decoration: TextDecoration.none,
                                            fontFamily: 'AvoBold',
                                            fontSize: 20,
                                            color: AppColors.textColorsBlack,
                                            overflow: TextOverflow.clip)),
                                    Text(AppStrings.newCustomer,
                                        style: TextStyle(
                                            decoration: TextDecoration.none,
                                            fontFamily: 'AvoNormal',
                                            fontSize: 14,
                                            color: AppColors.textColorsGrey,
                                            overflow: TextOverflow.clip)),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 1.0,
                        color: Colors.grey,
                        height: 60.0,
                      ),
                      Expanded(
                        child: FittedBox(
                          fit: BoxFit.fill,
                          child: Container(
                            padding: EdgeInsets.only(right: 6.0, left: 6.0),
                            height: 50.0,
                            child: Row(
                              children: [
                                Container(
                                    height: 40.0,
                                    width: 40.0,
                                    padding: EdgeInsets.all(7.0),
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: AppColors.primaryColor),
                                    child: AppIcon.iCustomer),
                                SizedBox(width: 8.0),
                                Column(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("60",
                                        style: TextStyle(
                                            decoration: TextDecoration.none,
                                            fontFamily: 'AvoBold',
                                            fontSize: 20,
                                            color: AppColors.textColorsBlack,
                                            overflow: TextOverflow.clip)),
                                    Text(AppStrings.notForgetCustomer,
                                        style: TextStyle(
                                            decoration: TextDecoration.none,
                                            fontFamily: 'AvoNormal',
                                            fontSize: 14,
                                            color: AppColors.textColorsGrey,
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
