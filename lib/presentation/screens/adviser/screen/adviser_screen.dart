import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:jibjab/core/routes/route_path.dart';
import 'package:jibjab/presentation/screens/adviser/widget/info_row.dart';
import 'package:jibjab/presentation/widgets/app_button/app_button.dart';

import '../../../../utils/app_colors/app_colors.dart';
import '../../../../utils/app_fonts/app_fonts.dart';
import '../../../../utils/assets_image/app_images.dart';
import '../../../../utils/dimensions/dimensions.dart';
import '../../../../utils/static_strings/static_strings.dart';
import '../../details/widget/info_row.dart';

class AdviserScreen extends StatelessWidget {
  const AdviserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: Dimensions.w(16),
            vertical: Dimensions.h(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              /// ---------------- HEADER ----------------
              Row(
                children: [
                  IconButton(
                    onPressed: Get.back,
                    icon: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: AppColors.primaryColor,
                      size: Dimensions.f(22),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        AppStrings.advertiserProfile.tr,
                        style: AppFonts.medium20.copyWith(
                          color: AppColors.blackColor,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 48), // balance back button
                ],
              ),

              SizedBox(height: Dimensions.h(24)),

              /// ---------------- PROFILE SECTION ----------------
              Center(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: Dimensions.w(60),
                      backgroundImage:
                      AssetImage(AppImages.motalebProfile),
                    ),

                    SizedBox(height: Dimensions.h(16)),

                    Text(
                      "Abdul Motaleb",
                      style: AppFonts.medium20.copyWith(
                        color: AppColors.blackColor,
                      ),
                    ),

                    SizedBox(height: Dimensions.h(6)),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        InfoRowAdviser(
                          icon: Icons.alternate_email,
                          text: "example@gmail.com",
                        ),
                        SizedBox(height: Dimensions.h(8)),
                        InfoRowAdviser(
                          icon: Icons.phone,
                          text: "(555) 123-4567",
                        ),

                      ],
                    )



                  ],
                ),
              ),

              SizedBox(height: Dimensions.h(40)),

              /// ---------------- MORE INFO TITLE ----------------
              Text(
                AppStrings.moreInfo.tr,
                style: AppFonts.medium16.copyWith(
                  color: AppColors.blackColor,
                ),
              ),

              SizedBox(height: Dimensions.h(12)),

              /// ---------------- MORE INFO BOX ----------------
              Container(
                width: double.infinity,
                height: 200,
                padding: EdgeInsets.all(Dimensions.w(10)),
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    width: 1,
                    color: AppColors.blackColor.withOpacity(0.2),
                  ),
                ),
                child: Text(
                  AppStrings.moreInfoAdviser.tr,
                  softWrap: true,
                  style: AppFonts.regular14.copyWith(
                    color: AppColors.blackColor,
                  ),
                ),
              ),

              SizedBox(height: Dimensions.h(30)),
              AppButton(text: "Back Home", onPressed: (){
                Get.toNamed(RoutePath.navigation);
              })
            ],
          ),
        ),
      ),
    );
  }
}
