import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:manage_studio/components/bottom_navigation_bar.dart';
import 'package:manage_studio/components/item_categories.dart';
import 'package:manage_studio/feature/home/overall_revenue/average_widget/average_widget.dart';
import 'package:manage_studio/feature/home/overall_revenue/overall_revenue_widget.dart';
import 'package:manage_studio/resources/app_string.dart';
import 'package:manage_studio/resources/colors.dart';
import 'package:manage_studio/resources/images.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

 class _HomeWidgetState extends State<HomeWidget> {
  late AnimationController _controller;

  int indexBottomBar = 0;

  void onItemTapped(int index) {
    setState(() {
      indexBottomBar = index;
    });
  }

  Widget buildBodyOverallRevenue() {
    return Stack(
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
          child: Column(
            children: [
              OverallRevenueWidget(),
              Container(
                height: 125.0,
                padding: EdgeInsets.all(16.0),
                color: Colors.transparent,
                child: Row(
                  children: [
                    AverageWidget(),
                    const SizedBox(width: 16.0),
                    AverageWidget(),
                  ],
                ),
              ),
              ItemCategories(
                  backgroundPadding: AppColors.backgroundColor,
                  backgroundItem: Colors.lightBlueAccent,
                  textTitle: "hello",
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
                backgroundItem: Colors.lightBlueAccent,
                textTitle: "hello",
              ),
              ItemCategories(
                backgroundPadding: AppColors.backgroundColor,
                backgroundItem: Colors.lightBlueAccent,
                textTitle: "hello",
              ),

              ItemCategories(
                backgroundPadding: AppColors.backgroundColor,
                backgroundItem: Colors.lightBlueAccent,
                textTitle: "hello",
              ),


              ItemCategories(
                backgroundPadding: AppColors.backgroundColor,
                backgroundItem: Colors.lightBlueAccent,
                textTitle: "hello",
              ),

              ItemCategories(
                backgroundPadding: AppColors.backgroundColor,
                backgroundItem: Colors.lightBlueAccent,
                textTitle: "hello",
              ),

              ItemCategories(
                backgroundPadding: AppColors.backgroundColor,
                backgroundItem: Colors.lightBlueAccent,
                textTitle: "hello",
              ),

            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {

    List<Widget> _widgetOptions = <Widget>[
      buildBodyOverallRevenue(),
      Text(
        'Index 1: Business',
      ),
      Text(
        'Index 2: School',
      ),
      Text(
        'Index 3: Settings',
      ),
    ];

    return Scaffold(
      appBar: _buildAppBar(),
      backgroundColor: AppColors.shadowColor,
      body: _widgetOptions.elementAt(indexBottomBar),
      bottomNavigationBar: BottomNavBar(
        onTap: (int i) {
          setState(() {
            indexBottomBar = i;
          });
        },
        currentIndex: indexBottomBar,
      ),
    );
  }

  _buildAppBar() {
    return PreferredSize(
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
            )));
  }
}
