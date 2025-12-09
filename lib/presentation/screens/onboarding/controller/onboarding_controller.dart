import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jibjab/core/routes/route_path.dart';
import 'package:jibjab/utils/assets_image/app_images.dart';
import 'package:jibjab/utils/static_strings/static_strings.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  final pageController = PageController();
  RxInt selectedIndex = 0.obs;

  final onboardingList = [
    {
      "image":AppImages.onboard1,
      "title": AppStrings.mentorYourPackageTitle.tr,
      "subtitle": AppStrings.mentorYourPackageTitle.tr
    },
    {
      "image": AppImages.onboard2,
      "title": AppStrings.mentorYourPackageTitle.tr,
      "subtitle": AppStrings.mentorYourPackageTitle.tr
    },
    {
      "image": AppImages.onboard3,
      "title": AppStrings.mentorYourPackageTitle.tr,
      "subtitle": AppStrings.mentorYourPackageTitle.tr
    },

  ];

  void nextPage() {
    if (selectedIndex.value == onboardingList.length - 1) {
      // Navigate to home or login
      Get.offAllNamed(RoutePath.welcome);
    } else {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }
}
