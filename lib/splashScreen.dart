import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_fini/constant/constant.dart';
import 'package:flutter_fini/onboarding/onboarding.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    Timer(
        Duration(seconds: 3),
        () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => OnBoarding()),
            ));
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBgColor,
      body: Padding(
        padding: EdgeInsets.all(fixPadding),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/th.png',
                width: 200.0,
                fit: BoxFit.fitWidth,
              ),
              heightSpace,
              heightSpace,
              heightSpace,
              SpinKitPulse(
                color: primaryColor,
                size: 50.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
