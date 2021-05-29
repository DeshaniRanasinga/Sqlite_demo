import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:insteller/ui/home_screen.dart';
import 'package:insteller/ui/splash_screen.dart';

import 'global/app_colors.dart';

void main() {
  runApp(Insteller());
}

class Insteller extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //set screen orientations
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      //remove debug banner
      debugShowCheckedModeBanner: false,
      title: 'Insteller',
      routes: {
        '/homeScreen' : (BuildContext context) => new HomeScreen(),
      },
      theme: ThemeData(
        primarySwatch: green,
        primaryColor: white225,
      ),
      home: Scaffold(
        body: SplashScreen(),
      ),
    );
  }
}

