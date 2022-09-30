import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:philousapp/screens/bottombar.dart';
import 'package:philousapp/screens/splashscreen.dart';
import 'package:philousapp/utills/app_styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "PhiloUsApp",
      theme: ThemeData(primaryColor: primary),
      home: SplashScreen(),
    );
  }
}
