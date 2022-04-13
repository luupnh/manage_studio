import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:manage_studio/components/item_categories.dart';
import 'package:manage_studio/feature/home/overall_revenue/average_widget/average_item_widget.dart';
import 'package:manage_studio/feature/home/overall_revenue/average_widget/overall_revenue_header_widget.dart';
import 'package:manage_studio/resources/app_icon.dart';
import 'package:manage_studio/resources/app_string.dart';
import 'package:manage_studio/resources/colors.dart';

class OverallRevenueWidget extends StatefulWidget {
  const OverallRevenueWidget({Key? key}) : super(key: key);

  @override
  State<OverallRevenueWidget> createState() => _OverallRevenueWidgetState();
}

class _OverallRevenueWidgetState extends State<OverallRevenueWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Stack(
        children: [
          Container(
            height: 50.0,
            alignment: Alignment.topCenter,
            decoration: BoxDecoration(
                color: Colors.blueAccent,
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[
                      AppColors.textColorsAppBar2,
                      AppColors.textColorsAppBar3,

                    ],
                    stops: [
                      0.0,
                      1.0,
                    ]),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.elliptical(600.0, 400.0),
                    bottomRight: Radius.elliptical(600.0, 400.0))),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                OverallRevenueHeaderWidget(),
                Container(
                  height: 125.0,
                  padding: EdgeInsets.all(16.0),
                  color: Colors.transparent,
                  child: Row(
                    children: [
                      AverageItemWidget(),
                      const SizedBox(width: 16.0),
                      AverageItemWidget(),
                    ],
                  ),
                ),
                ItemCategories(
                    backgroundPadding: AppColors.backgroundColor,
                    backgroundItem: AppColors.itemCategories,
                    textTitle: AppStrings.revenue,
                    textValue: "0d --",
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            height: 400,
                            color: Colors.amber,
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  const Text('Modal BottomSheet'),
                                  ElevatedButton(
                                    child: const Text('Close BottomSheet'),
                                    onPressed: () => Navigator.pop(context),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    }),
                ItemCategories(
                  backgroundPadding: AppColors.backgroundColor,
                  textTitle: AppStrings.receivable,
                  textValue: "0đ",
                ),
                ItemCategories(
                  backgroundPadding: AppColors.backgroundColor,
                  textTitle: "hello",
                ),
                ItemCategories(
                  backgroundPadding: AppColors.backgroundColor,
                  textTitle: "hello",
                ),
                ItemCategories(
                  backgroundPadding: AppColors.backgroundColor,
                  textTitle: "hello",
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
  _buildAppBar() {
    return PreferredSize(
        preferredSize: const Size.fromHeight(75.0),
        child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    AppColors.textColorsAppBar1,
                    AppColors.textColorsAppBar2
                  ],
                  stops: [
                    0.1,
                    1.0,
                  ]),
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
                                Text(AppStrings.titleAppBarOverallRevenue,
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontFamily: 'AvoNormal',
                                        fontSize: 16,
                                        color: AppColors.textColorsWhite,
                                        overflow: TextOverflow.clip)),
                                const SizedBox(width: 3.0),
                                AppIcon.iTitleAppBar
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
                              child: AppIcon.iNotification,
                            ))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: AppIcon.iCalendarTitleAppBar),
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
            )));
  }
}
