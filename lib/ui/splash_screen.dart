import 'dart:async';
import 'package:flutter/material.dart';
import 'package:insteller/global/app_colors.dart';
import 'package:insteller/ui/widgets/common.dart';
import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateToHome();
  }

  navigateToHome() async {
    Timer(Duration(seconds: 2), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (BuildContext context) => HomeScreen(title: 'Insteller')),
              (r) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: textLabel('Insteller', 62.0, FontWeight.w700, black0)
    );
  }
}