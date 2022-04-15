import 'package:flutter/material.dart';
import 'package:manage_studio/feature/home/customer/customer_item/customer_overall_header.dart';
import 'package:manage_studio/feature/home/customer/edit_customer/edit_customer_widget.dart';
import 'package:manage_studio/feature/home/customer/search_customer/search_customer_widget.dart';
import 'package:manage_studio/resources/app_icon.dart';
import 'package:manage_studio/resources/app_string.dart';
import 'package:manage_studio/resources/colors.dart';

class CustomerWidget extends StatefulWidget {
  const CustomerWidget({Key? key}) : super(key: key);

  @override
  _CustomerWidgetState createState() => _CustomerWidgetState();
}

class _CustomerWidgetState extends State<CustomerWidget> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: AppColors.shadowColor,
      appBar: _buildAppbar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomerOverallHeader(),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                width: size,
                decoration: BoxDecoration(
                    color: AppColors.backgroundColor,
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: AppColors.borderGrey)
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(AppStrings.relationshipCustomer,
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontFamily: 'AvoNormal',
                                  fontSize: 14,
                                  color: AppColors.textColorsBlack,
                                  overflow: TextOverflow.clip)),
                        ],
                      ),
                    ),
                    Container(
                      height: 1,
                      color: Colors.grey,
                    ),
                    Center(
                      child: Wrap(
                        runAlignment: WrapAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(8.0),
                            height: size/4,
                            width: size/4,
                            margin:EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: AppColors.backgroundColor,
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: [
                                BoxShadow(
                                  color: AppColors.borderGrey,
                                  spreadRadius: 2,
                                  blurRadius: 2,
                                ),
                              ]
                            ),
                            child: FittedBox(
                              fit: BoxFit.fill,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text("Chưa liên hệ",
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontFamily: 'AvoBold',
                                          fontSize: 16,
                                          color: AppColors.textColorsGrey,
                                          overflow: TextOverflow.clip)),
                                  Text("99",
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontFamily: 'AvoBold',
                                          fontSize: 30,
                                          color: AppColors.primaryColor,
                                          overflow: TextOverflow.clip)),
                                  Text("Khách hàng",
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontFamily: 'AvoNormal',
                                          fontSize: 12,
                                          color: AppColors.textColorsGrey,
                                          overflow: TextOverflow.clip))
                                ],
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(8.0),
                            height: size/4,
                            width: size/4,
                            margin:EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: AppColors.backgroundColor,
                                borderRadius: BorderRadius.circular(10.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: AppColors.borderGrey,
                                    spreadRadius: 2,
                                    blurRadius: 2,
                                  ),
                                ]
                            ),
                            child: FittedBox(
                              fit: BoxFit.fill,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text("Chưa liên hệ",
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontFamily: 'AvoBold',
                                          fontSize: 16,
                                          color: AppColors.textColorsGrey,
                                          overflow: TextOverflow.clip)),
                                  Text("99",
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontFamily: 'AvoBold',
                                          fontSize: 30,
                                          color: AppColors.primaryColor,
                                          overflow: TextOverflow.clip)),
                                  Text("Khách hàng",
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontFamily: 'AvoNormal',
                                          fontSize: 12,
                                          color: AppColors.textColorsGrey,
                                          overflow: TextOverflow.clip))
                                ],
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(8.0),
                            height: size/4,
                            width: size/4,
                            margin:EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: AppColors.backgroundColor,
                                borderRadius: BorderRadius.circular(10.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: AppColors.borderGrey,
                                    spreadRadius: 2,
                                    blurRadius: 2,
                                  ),
                                ]
                            ),
                            child: FittedBox(
                              fit: BoxFit.fill,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text("Chưa liên hệ",
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontFamily: 'AvoBold',
                                          fontSize: 16,
                                          color: AppColors.textColorsGrey,
                                          overflow: TextOverflow.clip)),
                                  Text("99",
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontFamily: 'AvoBold',
                                          fontSize: 30,
                                          color: AppColors.primaryColor,
                                          overflow: TextOverflow.clip)),
                                  Text("Khách hàng",
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontFamily: 'AvoNormal',
                                          fontSize: 12,
                                          color: AppColors.textColorsGrey,
                                          overflow: TextOverflow.clip))
                                ],
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(8.0),
                            height: size/4,
                            width: size/4,
                            margin:EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: AppColors.backgroundColor,
                                borderRadius: BorderRadius.circular(10.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: AppColors.borderGrey,
                                    spreadRadius: 2,
                                    blurRadius: 2,
                                  ),
                                ]
                            ),
                            child: FittedBox(
                              fit: BoxFit.fill,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text("Chưa liên hệ",
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontFamily: 'AvoBold',
                                          fontSize: 16,
                                          color: AppColors.textColorsGrey,
                                          overflow: TextOverflow.clip)),
                                  Text("99",
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontFamily: 'AvoBold',
                                          fontSize: 30,
                                          color: AppColors.primaryColor,
                                          overflow: TextOverflow.clip)),
                                  Text("Khách hàng",
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontFamily: 'AvoNormal',
                                          fontSize: 12,
                                          color: AppColors.textColorsGrey,
                                          overflow: TextOverflow.clip))
                                ],
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(8.0),
                            height: size/4,
                            width: size/4,
                            margin:EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: AppColors.backgroundColor,
                                borderRadius: BorderRadius.circular(10.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: AppColors.borderGrey,
                                    spreadRadius: 2,
                                    blurRadius: 2,
                                  ),
                                ]
                            ),
                            child: FittedBox(
                              fit: BoxFit.fill,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text("Chưa liên hệ",
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontFamily: 'AvoBold',
                                          fontSize: 16,
                                          color: AppColors.textColorsGrey,
                                          overflow: TextOverflow.clip)),
                                  Text("99",
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontFamily: 'AvoBold',
                                          fontSize: 30,
                                          color: AppColors.primaryColor,
                                          overflow: TextOverflow.clip)),
                                  Text("Khách hàng",
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontFamily: 'AvoNormal',
                                          fontSize: 12,
                                          color: AppColors.textColorsGrey,
                                          overflow: TextOverflow.clip))
                                ],
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(8.0),
                            height: size/4,
                            width: size/4,
                            margin:EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: AppColors.backgroundColor,
                                borderRadius: BorderRadius.circular(10.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: AppColors.borderGrey,
                                    spreadRadius: 2,
                                    blurRadius: 2,
                                  ),
                                ]
                            ),
                            child: FittedBox(
                              fit: BoxFit.fill,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text("Chưa liên hệ",
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontFamily: 'AvoBold',
                                          fontSize: 16,
                                          color: AppColors.textColorsGrey,
                                          overflow: TextOverflow.clip)),
                                  Text("99",
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontFamily: 'AvoBold',
                                          fontSize: 30,
                                          color: AppColors.primaryColor,
                                          overflow: TextOverflow.clip)),
                                  Text("Khách hàng",
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontFamily: 'AvoNormal',
                                          fontSize: 12,
                                          color: AppColors.textColorsGrey,
                                          overflow: TextOverflow.clip))
                                ],
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(8.0),
                            height: size/4,
                            width: size/4,
                            margin:EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: AppColors.backgroundColor,
                                borderRadius: BorderRadius.circular(10.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: AppColors.borderGrey,
                                    spreadRadius: 2,
                                    blurRadius: 2,
                                  ),
                                ]
                            ),
                            child: FittedBox(
                              fit: BoxFit.fill,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text("Chưa liên hệ",
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontFamily: 'AvoBold',
                                          fontSize: 16,
                                          color: AppColors.textColorsGrey,
                                          overflow: TextOverflow.clip)),
                                  Text("99",
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontFamily: 'AvoBold',
                                          fontSize: 30,
                                          color: AppColors.primaryColor,
                                          overflow: TextOverflow.clip)),
                                  Text("Khách hàng",
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontFamily: 'AvoNormal',
                                          fontSize: 12,
                                          color: AppColors.textColorsGrey,
                                          overflow: TextOverflow.clip))
                                ],
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(8.0),
                            height: size/4,
                            width: size/4,
                            margin:EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: AppColors.backgroundColor,
                                borderRadius: BorderRadius.circular(10.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: AppColors.borderGrey,
                                    spreadRadius: 2,
                                    blurRadius: 2,
                                  ),
                                ]
                            ),
                            child: FittedBox(
                              fit: BoxFit.fill,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text("Chưa liên hệ",
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontFamily: 'AvoBold',
                                          fontSize: 16,
                                          color: AppColors.textColorsGrey,
                                          overflow: TextOverflow.clip)),
                                  Text("99",
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontFamily: 'AvoBold',
                                          fontSize: 30,
                                          color: AppColors.primaryColor,
                                          overflow: TextOverflow.clip)),
                                  Text("Khách hàng",
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontFamily: 'AvoNormal',
                                          fontSize: 12,
                                          color: AppColors.textColorsGrey,
                                          overflow: TextOverflow.clip))
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      endDrawer: Drawer(
        child: SearchCustomerWidget()
      ),
      endDrawerEnableOpenDragGesture: false,
    );
  }
  void _openEndDrawer() {
    _scaffoldKey.currentState!.openEndDrawer();
  }
  _buildAppbar() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(45.0),
      child: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.backgroundColor,
        title: Text(AppStrings.titleAppBarCustomer,
            style: TextStyle(
                decoration: TextDecoration.none,
                fontFamily: 'AvoNormal',
                fontSize: 16,
                color: AppColors.textColorsBlack,
                overflow: TextOverflow.clip)),
        leading: IconButton(
          onPressed: _openEndDrawer,
          icon: AppIcon.iSearch, color: AppColors.iconCustomer,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: AppIcon.iChart,
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const EditCustomer()),
              );
            },
            icon: AppIcon.iPlus,
          ),
        ],
      ),
    );
  }
}
