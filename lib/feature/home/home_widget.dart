import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:manage_studio/feature/home/overall_revenue/average_widget/average_widget.dart';
import 'package:manage_studio/feature/home/overall_revenue/overall_revenue_widget.dart';
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
      appBar: _buildAppBar(),
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
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Colors.pink,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
        backgroundColor: AppColors.backgroundLight,
      ),
    );
  }
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
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
