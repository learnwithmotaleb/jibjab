import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/routes/route_path.dart';
import '../../../../global/language/controller/language_controller.dart';
import '../../../../utils/app_fonts/app_fonts.dart';
import '../../../../utils/assets_image/app_images.dart';
import '../../../../utils/app_colors/app_colors.dart';
import '../../../../utils/static_strings/static_strings.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final lc = LanguageController.to;

    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.06,
          vertical: size.height * 0.01,
        ),
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height,
            ),
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
                        color: AppColors.primaryColor,
                        size: 22,
                      ),
                    ),
                    Expanded(
                      child: Obx(() => Text(
                        lc.isEnglish.value
                            ? AppStrings.selectYourLanguage.tr
                            : AppStrings.selectYourLanguage.tr,
                        textAlign: TextAlign.center,
                        style: AppFonts.medium18,
                      )),
                    ),
                  ],
                ),

                SizedBox(height: size.height * 0.10),

                /// ------------------ TOP IMAGE ------------------
                Center(
                  child: Image.asset(
                    AppImages.onboard5,
                    width: size.width * 0.65,
                    fit: BoxFit.contain,
                  ),
                ),

                SizedBox(height: size.height * 0.06),

                /// ------------------ LANGUAGE TOGGLE ------------------
                Obx(() => Container(
                  height: 60,
                  width: size.width * 0.75,
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 15,
                        spreadRadius: 2,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      /// ENGLISH BUTTON
                      Expanded(
                        child: GestureDetector(
                         onTap: () => lc.switchLanguage(true),
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 250),
                            decoration: BoxDecoration(
                              color: lc.isEnglish.value
                                  ? AppColors.primaryColor
                                  : Colors.transparent,
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                              ),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              AppStrings.english,
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),

                      /// ARABIC BUTTON
                      Expanded(
                        child: GestureDetector(
                          onTap: () => lc.switchLanguage(false),
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 250),
                            decoration: BoxDecoration(
                              color: lc.isEnglish.value
                                  ? Colors.transparent
                                  : AppColors.primaryColor,
                              borderRadius: lc.isEnglish.value? const BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ): const BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                              ),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              AppStrings.arabic,
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )),

                SizedBox(height: size.height * 0.05),

                /// ------------------ CENTER LOGO ------------------
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    AppImages.appLogo,
                    width: size.width * 0.35,
                    height: size.width * 0.35,
                    fit: BoxFit.cover,
                  ),
                ),

                SizedBox(height: size.height * 0.05),


                /// ------------------ CONTINUE BUTTON ------------------
                GestureDetector(
                  onTap: () {
                    // Navigate to next screen
                    // lc.applyLanguage();
                    Get.toNamed(RoutePath.login); // replace with your route
                  },
                  child: Container(
                    width: double.infinity,
                    height: 52,
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 8,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        AppStrings.continueButton.tr,
                        style: AppFonts.semiBold20,
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
}
