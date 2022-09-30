import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:philousapp/screens/bottombar.dart';
import 'package:philousapp/screens/welcomescreen.dart';

class SplashScreenControl extends GetxController {
  static SplashScreenControl get find => Get.find();

  RxBool animate = false.obs;

  Future startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 500));
    animate.value = true;
    await Future.delayed(const Duration(milliseconds: 5000));
    Get.to(BottomBar());
  }
}
