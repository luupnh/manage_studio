import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:manage_studio/resources/images.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.fromLTRB(40, 150, 20, 70),
              child: Image.asset(
                Images.logo,
              ),
            ),
            FlatButton(
              child: Text(
                'LOGIN',
                style: GoogleFonts.poppins(
                  color: Color.fromRGBO(207, 10, 10, 1),
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
              color: Color.fromARGB(255, 253, 253, 253),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  side: BorderSide(
                      color: Color.fromRGBO(207, 10, 10, 1), width: 2)),
              padding: EdgeInsets.fromLTRB(80, 10, 80, 10),
              onPressed: () {},
            ),
            SizedBox(height: 20),
            FlatButton(
              padding: EdgeInsets.fromLTRB(70, 10, 70, 10),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0)),
              color: Color.fromRGBO(23, 11, 113, 1.0),
              onPressed: () {},
              child: Text(
                'SIGN UP',
                style: GoogleFonts.poppins(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
