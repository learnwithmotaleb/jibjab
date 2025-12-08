import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jibjab/core/routes/route_path.dart';
import 'package:jibjab/utils/app_colors/app_colors.dart';
import '../../../core/custom_assets/assets.gen.dart';
import '../../../utils/assets_image/app_images.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 2), () {
      Get.offNamed(RoutePath.onboard);
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final w = size.width;
    final h = size.height;

    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Stack(
        children: [
          /// Center logo (resizes automatically on all screens)
          Center(
            child: Assets.images.splashLogo.image(
              width: w * 0.50,   // 50% of screen width
              height: w * 0.50,  // keep square shape
              fit: BoxFit.contain,
            ),
          ),

          /// Bottom decoration image (fully responsive)
          Positioned(
            bottom: h * 0.01,    // 4% bottom padding for any screen
            left: w * 0.05,      // 5% left padding
            child: Image.asset(
              AppImages.fi,
              width: w * 0.18,   // 20% of screen width
              height: w * 0.16,  // keep ratio
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
