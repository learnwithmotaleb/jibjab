import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jibjab/core/routes/route_path.dart';
import 'package:jibjab/utils/app_colors/app_colors.dart';
import 'package:jibjab/utils/app_fonts/app_fonts.dart';
import 'package:jibjab/utils/assets_image/app_images.dart';
import 'package:jibjab/utils/static_strings/static_strings.dart';
import 'package:jibjab/utils/dimensions/dimensions.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Dimensions.w(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              /// Back Icon
              Row(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: GestureDetector(
                      onTap: (){
                        Get.back();
                      },
                      child: Icon(
                        Icons.arrow_back_ios_outlined,
                        color: AppColors.primaryColor,
                        size: Dimensions.f(18),
                      ),
                    ),
                  ),
                  SizedBox(width: Dimensions.w(50)),

                  /// Welcome Text
                  Center(
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: AppStrings.welcomeTo.tr,
                        style: AppFonts.medium18.copyWith(
                        ),
                        children: [
                          TextSpan(
                            text: AppStrings.appName.tr,
                            style: TextStyle(
                              color: AppColors.primaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: Dimensions.f(18),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                ],
              ),


              SizedBox(height: Dimensions.h(30)),

              /// Image
              Center(
                child: Image.asset(
                  AppImages.onboard4,
                  width: Dimensions.w(280),
                  height: Dimensions.h(260),
                  fit: BoxFit.contain,
                ),
              ),

              SizedBox(height: Dimensions.h(40)),

              /// Subtitle 1
              Center(
                child: Text(
                  AppStrings.everythingYouNeedTitle.tr,
                  style: AppFonts.medium16.copyWith(
                    fontSize: Dimensions.f(16),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              SizedBox(height: Dimensions.h(20)),

              /// Subtitle 2
              Center(
                child: Text(
                  AppStrings.everythingYouNeedSubTitle.tr,
                  style: AppFonts.regular14.copyWith(
                    fontSize: Dimensions.f(14),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              const Spacer(),

              /// JOIN US button
              Center(
                child: TextButton(
                  onPressed: () => Get.toNamed(RoutePath.language),
                  child: Text(
                    AppStrings.joinUSButton.tr,
                    style: AppFonts.medium20.copyWith(
                      fontSize: Dimensions.f(20),
                    ),
                  ),
                ),
              ),

              SizedBox(height: Dimensions.h(30)),

              /// User Button
              GestureDetector(
                onTap: (){
                  //Get.toNamed(RoutePath.login);
                 Get.toNamed(RoutePath.language);

                },
                child: Container(
                  width: double.infinity,
                  height: Dimensions.h(52),
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(Dimensions.r(10)),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.person,
                            color: AppColors.whiteColor,
                            size: Dimensions.f(22)),
                        SizedBox(width: Dimensions.w(10)),
                        Text(
                          AppStrings.userButton.tr,
                          style: AppFonts.semiBold20.copyWith(
                            fontSize: Dimensions.f(20),
                          ),
                        ),
                        SizedBox(width: Dimensions.w(10)),
                        Icon(Icons.arrow_forward_ios,
                            color: AppColors.whiteColor,
                            size: Dimensions.f(18)),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
