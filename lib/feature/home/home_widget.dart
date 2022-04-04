import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:manage_studio/resources/app_icon.dart';
import 'package:manage_studio/resources/app_string.dart';
import 'package:manage_studio/resources/colors.dart';
import 'package:manage_studio/resources/images.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100.0),
          child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[Colors.blue, Colors.blueAccent],
                ),
              ),
              child: Center(
                child: Padding(
                  padding: EdgeInsets.only(
                      left: 16.0,
                      right: 16.0,
                      top: MediaQuery.of(context).viewPadding.top),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          Container(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(AppStrings.titleAppBar,
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontFamily: 'AvoNormal',
                                      fontSize: 16,
                                      color: AppColors.textColorsWhite,
                                      overflow: TextOverflow.clip)),
                              const SizedBox(width: 3.0),
                              Images.iTitleAppBar
                            ],
                          )),
                          Container(
                              alignment: Alignment.centerRight,
                              child: Badge(
                                badgeContent: Text('3',
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontFamily: 'AvoNormal',
                                        fontSize: 10,
                                        color: AppColors.textColorsWhite,
                                        overflow: TextOverflow.clip)),
                                child: Images.iNotification,
                              ))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Images.iCalendarTitleAppBar),
                          const SizedBox(width: 5.0),
                          Text(AppStrings.titleCalendarAppBar,
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontFamily: 'AvoNormal',
                                  fontSize: 16,
                                  color: AppColors.textColorsWhite,
                                  overflow: TextOverflow.clip)),
                        ],
                      )
                    ],
                  ),
                ),
              ))),
      backgroundColor: AppColors.shadowColor,
      body: Stack(
        children: [
          Container(
            height: 120.0,
            alignment: Alignment.topCenter,
            decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.elliptical(600.0, 400.0),
                    bottomRight: Radius.elliptical(600.0, 400.0))),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(left: 16.0, right: 16.0),
              child: Column(
                children: [
                  Container(
                    height: 180.0,
                    decoration: BoxDecoration(
                        color: AppColors.backgroundColor,
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
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
                        )),
                        Padding(
                          padding: EdgeInsets.only(left: 16.0, right: 16.0),
                          child: Container(
                            height: 0.8,
                            color: Colors.grey,
                          ),
                        ),
                        Expanded(
                            child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    SizedBox(
                                        height: 40.0,
                                        width: 40.0,
                                        child: AppIcon(Images.iError)),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        FittedBox(
                                          fit: BoxFit.fill,
                                          child: Text("0",
                                              style: TextStyle(
                                                  decoration:
                                                      TextDecoration.none,
                                                  fontFamily: 'AvoNormal',
                                                  fontSize: 14,
                                                  color:
                                                      AppColors.textColorsBlack,
                                                  overflow: TextOverflow.clip)),
                                        ),
                                        FittedBox(
                                          fit: BoxFit.fill,
                                          child: Text(AppStrings.product,
                                              style: TextStyle(
                                                  decoration:
                                                      TextDecoration.none,
                                                  fontFamily: 'AvoNormal',
                                                  fontSize: 14,
                                                  color:
                                                      AppColors.textColorsBlack,
                                                  overflow: TextOverflow.clip)),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ))
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
