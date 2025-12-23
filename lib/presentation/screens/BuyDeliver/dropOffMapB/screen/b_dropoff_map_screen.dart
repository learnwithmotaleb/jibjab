import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

import '../../../../../core/routes/route_path.dart';
import '../../../../../utils/app_colors/app_colors.dart';
import '../../../../../utils/app_fonts/app_fonts.dart';
import '../../../../../utils/assets_image/app_images.dart';
import '../../../../../utils/dimensions/dimensions.dart';
import '../../../../../utils/static_strings/static_strings.dart';
import '../../../../widgets/app_button/app_button.dart';
import '../../../details/widget/top_bar.dart';

class BDropoffMapScreen extends StatefulWidget {
  const BDropoffMapScreen({super.key});

  @override
  State<BDropoffMapScreen> createState() => _BDropoffMapScreenState();
}

class _BDropoffMapScreenState extends State<BDropoffMapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// 🔹 Top spacing
              SizedBox(height: Dimensions.h(16)),

              /// 🔹 App Bar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: TopBar(title: AppStrings.dropOff.tr),
              ),

              SizedBox(height: Dimensions.h(16)),

              /// 🔹 Map Section
              Stack(
                alignment: Alignment.center,
                children: [
                  /// Map Image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(
                      AppImages.pickupLocationImage,
                      width: double.infinity,
                      height: 500,
                      fit: BoxFit.fill,
                    ),
                  ),

                  /// Pick up marker
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.location_on,
                        color: AppColors.redColor,
                        size: 32,
                      ),
                      SizedBox(height: Dimensions.h(4)),
                      Text(
                        AppStrings.dropOff.tr,
                        style: AppFonts.regular14.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: AppColors.blackLightColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              /// 🔹 Bottom Section
              SizedBox(height: Dimensions.h(16)),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 24),
                child: AppButton(
                  text: AppStrings.confirmAddress.tr,
                  onPressed: () {
                    Get.toNamed(
                        RoutePath.bWillPayScreen
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
