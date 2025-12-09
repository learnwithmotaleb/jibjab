import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jibjab/utils/app_colors/app_colors.dart';
import 'package:jibjab/utils/app_fonts/app_fonts.dart';
import 'package:jibjab/utils/static_strings/static_strings.dart';
import 'package:jibjab/utils/dimensions/dimensions.dart';
import '../controller/onboarding_controller.dart';

class OnboardingScreen extends GetView<OnboardingController> {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          SizedBox(height: Dimensions.h(80)),

          /// ⭐ PAGEVIEW INSIDE EXPANDED
          Expanded(
            child: PageView.builder(
              controller: controller.pageController,
              itemCount: controller.onboardingList.length,
              onPageChanged: (value) => controller.selectedIndex.value = value,
              itemBuilder: (context, index) {
                final data = controller.onboardingList[index];

                return Stack(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        /// ⭐ IMAGE — RESPONSIVE
                        Image.asset(
                          data["image"]!,
                          width: Dimensions.w(300),
                          height: Dimensions.h(280),
                          fit: BoxFit.contain,
                        ),

                        SizedBox(height: Dimensions.h(80)),

                        /// ⭐ TITLE
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: Dimensions.w(20),
                          ),
                          child: Text(
                            data["title"]!,
                            textAlign: TextAlign.center,
                            style: AppFonts.medium16.copyWith(
                              fontSize: Dimensions.f(18),
                            ),
                          ),
                        ),

                        SizedBox(height: Dimensions.h(10)),

                        /// ⭐ SUBTITLE
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: Dimensions.w(20),
                          ),
                          child: Text(
                            data["subtitle"]!,
                            textAlign: TextAlign.center,
                            style: AppFonts.regular14.copyWith(
                              fontSize: Dimensions.f(14),
                            ),
                          ),
                        ),
                      ],
                    ),

                    /// ⭐ DOT INDICATORS (Over Image)
                    Positioned(
                      bottom: Dimensions.h(200),
                      left: 0,
                      right: 0,
                      child: Obx(
                            () => Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            controller.onboardingList.length,
                                (index2) {
                              bool selected =
                                  controller.selectedIndex.value == index2;

                              return AnimatedContainer(
                                duration: const Duration(milliseconds: 250),
                                margin: EdgeInsets.symmetric(
                                  horizontal: Dimensions.w(4),
                                ),
                                width: selected
                                    ? Dimensions.w(16)
                                    : Dimensions.w(10),
                                height: selected
                                    ? Dimensions.w(16)
                                    : Dimensions.w(10),
                                decoration: BoxDecoration(
                                  color: selected
                                      ? AppColors.primaryColor
                                      : Colors.white,
                                  shape: BoxShape.circle,
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),

          SizedBox(height: Dimensions.h(20)),

          /// ⭐ NEXT / CONTINUE BUTTON
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Dimensions.w(20)),
            child: SizedBox(
              width: double.infinity,
              height: Dimensions.h(52),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(Dimensions.r(12)),
                  ),
                ),
                onPressed: () => controller.nextPage(),
                child: Obx(
                      () => Text(
                    controller.selectedIndex.value ==
                        controller.onboardingList.length - 1
                        ? AppStrings.continueButton.tr
                        : AppStrings.nextButton,
                    style: AppFonts.medium16.copyWith(
                      color: Colors.white,
                      fontSize: Dimensions.f(18),
                    ),
                  ),
                ),
              ),
            ),
          ),

          SizedBox(height: Dimensions.h(40)),
        ],
      ),
    );
  }
}
