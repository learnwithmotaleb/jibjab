import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jibjab/presentation/widgets/app_button/app_button.dart';
import 'package:jibjab/utils/app_colors/app_colors.dart';
import 'package:jibjab/utils/app_fonts/app_fonts.dart';
import 'package:jibjab/utils/assets_image/app_images.dart';
import '../../../../../utils/dimensions/dimensions.dart';
import '../../../../../utils/static_strings/static_strings.dart';
import '../../../details/widget/top_bar.dart';
import '../controller/language_setting_controller.dart';


class LanguageSettingScreen extends StatelessWidget {
  LanguageSettingScreen({super.key});

  // Initialize the LanguageSettingController
  final LanguageSettingController lsc =
  Get.put(LanguageSettingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Dimensions.w(16)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: Dimensions.h(10)),
              TopBar(title: AppStrings.language.tr),
              SizedBox(height: Dimensions.h(32)),

              /// Language title
              Text(
                AppStrings.language.tr,
                style: TextStyle(
                  fontSize: Dimensions.h(16),
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: Dimensions.h(16)),

              /// English
              _languageItem(
                flag: AppImages.englishImage,
                title: AppStrings.english,
                value: 'en',
              ),
              SizedBox(height: Dimensions.h(12)),

              /// Arabic
              _languageItem(
                flag: AppImages.arabicImage,
                title: AppStrings.arabic,
                value: 'ar',
              ),

              const Spacer(),

              /// Submit button (optional, can remove if instant update)
              AppButton(
                text: AppStrings.submit,
                onPressed: () {
                  Get.back();
                },
              ),
              SizedBox(height: Dimensions.h(100)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _languageItem({
    required String flag,
    required String title,
    required String value,
  }) {
    return Obx(() => GestureDetector(
      onTap: () => lsc.changeLanguage(value),
      child: Container(
        width: Dimensions.w(356),
        height: Dimensions.h(48),
        padding: EdgeInsets.symmetric(
          horizontal: Dimensions.w(15),
          vertical: Dimensions.h(10),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          border: Border.all(
            color: lsc.selectedLanguage.value == value
                ? AppColors.primaryColor
                : AppColors.primaryColor,
          ),
        ),
        child: Row(
          children: [
            /// Flag
            CircleAvatar(
              radius: 28,
              backgroundImage: AssetImage(flag),
            ),
            SizedBox(width: Dimensions.w(15)),

            /// Text
            Expanded(
              child: Text(
                title,
                style: AppFonts.regular16
                    .copyWith(fontWeight: FontWeight.w400),
              ),
            ),

            /// Select icon
            Icon(
              lsc.selectedLanguage.value == value
                  ? Icons.check_circle
                  : Icons.radio_button_unchecked,
              size: 20,
              color: lsc.selectedLanguage.value == value
                  ? AppColors.primaryColor
                  : AppColors.languageSettingCheckUnCheckColor,
            ),
          ],
        ),
      ),
    ));
  }
}
