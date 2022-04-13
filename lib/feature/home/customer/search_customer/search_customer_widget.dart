import 'package:flutter/material.dart';

class SearchCustomerWidget extends StatefulWidget {
  const SearchCustomerWidget({Key? key}) : super(key: key);

  @override
  _SearchCustomerWidgetState createState() => _SearchCustomerWidgetState();
}

class _SearchCustomerWidgetState extends State<SearchCustomerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: MediaQuery.of(context).viewPadding.top),
      color: Colors.red,
      child: Column(

      ),
    );
  }
}
