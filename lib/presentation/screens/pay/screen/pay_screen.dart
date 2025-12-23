import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:jibjab/core/routes/route_path.dart';
import 'package:jibjab/presentation/widgets/app_button/app_button.dart';
import 'package:jibjab/utils/app_colors/app_colors.dart';
import 'package:jibjab/utils/app_fonts/app_fonts.dart';
import 'package:jibjab/utils/assets_image/app_images.dart';
import 'package:jibjab/utils/static_strings/static_strings.dart';
import '../../../../utils/dimensions/dimensions.dart';
import '../widget/features_image.dart';

class PayScreen extends StatefulWidget {
  const PayScreen({super.key});

  @override
  State<PayScreen> createState() => _PayScreenState();
}

class _PayScreenState extends State<PayScreen> {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Top Image
            ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(59),
                bottomRight: Radius.circular(57),
              ),
              child: Image.asset(
                AppImages.helperImage,
                fit: BoxFit.cover,
                width: double.infinity,
                height: Dimensions.h(356),
              ),
            ),
            // Content Padding
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: Dimensions.w(20),
                vertical: Dimensions.h(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title
                  Text(
                    AppStrings.becomeAHelper.tr,
                    style: AppFonts.medium20.copyWith(color: AppColors.blackColor),
                  ),
                  SizedBox(height: Dimensions.h(16)),
                  // Subtitle
                  Text(
                    AppStrings.becomeAHelperSubTitle.tr,
                    style: AppFonts.regularSubTitle12,
                  ),
                  SizedBox(height: Dimensions.h(24)),
                  // Feature Items
                  Column(
                    children: [
                      FeatureItem(
                        image: AppImages.trueFlexibilityImage,
                        title: AppStrings.trueFlexibility.tr,
                        subtitle: AppStrings.trueFlexibilitySubTitle.tr,
                      ),
                      SizedBox(height: Dimensions.h(16)),
                      FeatureItem(
                        image: AppImages.superEasyImage,
                        title: AppStrings.superEasyToGetStarted.tr,
                        subtitle: AppStrings.superEasyToGetStartedSubTitle.tr,
                      ),
                      SizedBox(height: Dimensions.h(16)),
                      FeatureItem(
                        image: AppImages.becauseEarthImage,
                        title: AppStrings.becauseEarthLovesIt.tr,
                        subtitle: AppStrings.becauseEarthLovesItSubTitle.tr,
                      ),
                    ],
                  ),
                  SizedBox(height: Dimensions.h(80)),
                  // Continue Button
                  AppButton(
                    text: AppStrings.continueButton.tr,
                    onPressed: () {

                      Get.toNamed(RoutePath.important);


                    },
                  ),
                  SizedBox(height: Dimensions.h(100)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
