import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/routes/route_path.dart';
import '../../../../global/language/controller/language_controller.dart';
import '../../../../utils/app_fonts/app_fonts.dart';
import '../../../../utils/assets_image/app_images.dart';
import '../../../../utils/app_colors/app_colors.dart';
import '../../../../utils/static_strings/static_strings.dart';
import '../../../../utils/dimensions/dimensions.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final lc = LanguageController.to;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Dimensions.w(24),
          vertical: 0),
          child: SingleChildScrollView(
            padding: EdgeInsets.all(0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
        
                /// ------------------ HEADER ------------------
                Row(
                  children: [
                    InkWell(
                      onTap: () => Get.back(),
                      child: Icon(
                        Icons.arrow_back_ios_outlined,
                        size: Dimensions.w(22),
                        color: AppColors.primaryColor,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        AppStrings.selectYourLanguage.tr,
                        textAlign: TextAlign.center,
                        style: AppFonts.medium18.copyWith(
                          fontSize: Dimensions.f(18),
                        ),
                      ),
                    ),
        
                  ],
                ),
        
                SizedBox(height: Dimensions.h(80)),
        
                /// ------------------ TOP IMAGE ------------------
                Image.asset(
                  AppImages.onboard5,
                  width: Dimensions.w(250),
                  fit: BoxFit.contain,
                ),
        
                SizedBox(height: Dimensions.h(48)),
        
                /// ------------------ LANGUAGE TOGGLE ------------------
                Obx(
                      () => Container(
                    height: Dimensions.h(60),
                    width: Dimensions.w(300),
                    decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(Dimensions.r(20)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: Dimensions.r(15),
                          offset: Offset(0, Dimensions.h(4)),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
        
                        /// ENGLISH
                        _languageButton(
                          title: AppStrings.english,
                          isActive: lc.isEnglish.value,
                          onTap: () => lc.switchLanguage(true),
                          left: true,
                        ),
        
                        /// ARABIC
                        _languageButton(
                          title: AppStrings.arabic,
                          isActive: !lc.isEnglish.value,
                          onTap: () => lc.switchLanguage(false),
                          right: true,
                        ),
                      ],
                    ),
                  ),
                ),
        
                SizedBox(height: Dimensions.h(40)),
        
                /// ------------------ CENTER LOGO ------------------
                ClipRRect(
                  borderRadius: BorderRadius.circular(Dimensions.r(100)),
                  child: Image.asset(
                    AppImages.appLogo,
                    width: Dimensions.w(140),
                    height: Dimensions.w(140),
                    fit: BoxFit.cover,
                  ),
                ),
        
                SizedBox(height: Dimensions.h(40)),
        
                /// ------------------ CONTINUE BUTTON ------------------
                GestureDetector(
                  onTap: () => Get.toNamed(RoutePath.login),
                  child: Container(
                    width: double.infinity,
                    height: Dimensions.h(52),
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(Dimensions.r(12)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: Dimensions.r(8),
                          offset: Offset(0, Dimensions.h(4)),
                        ),
                      ],
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      AppStrings.continueButton.tr,
                      style: AppFonts.semiBold20.copyWith(
                        fontSize: Dimensions.f(20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// ------------------ LANGUAGE BUTTON WIDGET ------------------
  Widget _languageButton({
    required String title,
    required bool isActive,
    required VoidCallback onTap,
    bool left = false,
    bool right = false,
  }) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: isActive ? AppColors.primaryColor : Colors.transparent,
            borderRadius: isActive ? BorderRadius.only(
              topLeft: left ? Radius.circular(Dimensions.r(20)) :Radius.circular(Dimensions.r(20)),
              bottomLeft: left ? Radius.circular(Dimensions.r(20)) : Radius.circular(Dimensions.r(20)),
              topRight: left ? Radius.circular(Dimensions.r(20)) : Radius.circular(Dimensions.r(20)),
              bottomRight: left ? Radius.circular(Dimensions.r(20)) : Radius.circular(Dimensions.r(20)),

            ): BorderRadius.only(
              topRight: left ? Radius.circular(Dimensions.r(20)) : Radius.zero,
              bottomRight: left ? Radius.circular(Dimensions.r(20)) : Radius.zero,
              topLeft: right ? Radius.circular(Dimensions.r(20)) : Radius.zero,
              bottomLeft: right ? Radius.circular(Dimensions.r(20)) : Radius.zero,
            ),
          ),
          child: Text(
            title,
            style: TextStyle(
              fontSize: Dimensions.f(18),
              fontWeight: FontWeight.bold,
              color:  isActive ? AppColors.whiteColor : AppColors.blackColor,
            ),
          ),
        ),
      ),
    );
  }
}
