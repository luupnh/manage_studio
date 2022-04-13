import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:manage_studio/components/bottom_navigation_bar.dart';
import 'package:manage_studio/feature/home/customer/customer_widget.dart';
import 'package:manage_studio/feature/home/overall_revenue/overall_revenue_widget.dart';
import 'package:manage_studio/resources/app_string.dart';
import 'package:manage_studio/resources/colors.dart';
import 'package:manage_studio/resources/strings_images.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  late AnimationController _controller;

  int indexBottomBar = 0;

  List<Widget> _widgetOptions = <Widget>[
    OverallRevenueWidget(),
    CustomerWidget(),
    Text(
      'Index 2: School',
    ),
    Text(
      'Index 3: Settings',
    ),
  ];

  void onItemTapped(int index) {
    setState(() {
      indexBottomBar = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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


}
