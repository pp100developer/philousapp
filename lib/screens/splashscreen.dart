import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:philousapp/getx/splash_screen_control.dart';
import 'package:philousapp/utills/app_image.dart';
import 'package:philousapp/utills/app_styles.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  final splashController = Get.put(SplashScreenControl());

  @override
  Widget build(BuildContext context) {
    splashController.startAnimation();
    return Scaffold(
      body: Stack(
        children: [
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              top: 80,
              left: splashController.animate.value ? defaultSize : -80,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 1600),
                opacity: splashController.animate.value ? 1 : 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Gap(100),
                    Text(
                      "'함께 철학하자'",
                      style: Styles.headLineStyle5,
                    ),
                    const Gap(20),
                    Text(
                      "필로어스에 오신 것을 환영합니다",
                      style: Styles.headLineStyle2,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 2400),
              left: 40,
              bottom: splashController.animate.value ? 300 : 0,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 2000),
                opacity: splashController.animate.value ? 1 : 0,
                child: Image(
                  image: AssetImage(logoIcon),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
