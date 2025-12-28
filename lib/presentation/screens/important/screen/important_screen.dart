import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jibjab/core/routes/route_path.dart';
import 'package:jibjab/presentation/widgets/app_button/app_button.dart';
import 'package:jibjab/utils/assets_image/app_images.dart';
import '../../../../utils/app_colors/app_colors.dart';
import '../../../../utils/app_fonts/app_fonts.dart';
import '../../../../utils/dimensions/dimensions.dart';
import '../../../../utils/static_strings/static_strings.dart';
import '../controller/important_controller.dart';
import '../widget/term_title_widget.dart';

class ImportantScreen extends StatelessWidget {
  ImportantScreen({super.key});

  // Initialize controller
  final ImportantController controller = Get.put(ImportantController());

  @override
  Widget build(BuildContext context) {
    // List of terms and their images
    final List<Map<String, String>> terms = [
      {
        "image": AppImages.importImage1,
        "text": "You can only accept assignments as an individual, not on a professional or business level."
      },
      {
        "image": AppImages.importImage2,
        "text": "You are personally responsible for this account, and only you are allowed to use it."
      },
      {
        "image": AppImages.importImage3,
        "text": "You are personally responsible for this account, and only you are allowed to use it."
      },
      {
        "image": AppImages.importImage4,
        "text": "You are responsible for declaring your income and paying any applicable taxes."
      },
    ];

    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(Dimensions.w(10)),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// ---------------- HEADER ----------------
                Row(
                  children: [
                    InkWell(
                      onTap: () => Get.back(),
                      child: Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: AppColors.primaryColor,
                        size: Dimensions.f(22),
                      ),
                    ),
                    SizedBox(width: Dimensions.w(16)),
                    Expanded(
                      child: Center(
                        child: Text(
                          AppStrings.importantTerms.tr,
                          style: AppFonts.medium20.copyWith(
                            fontSize: Dimensions.f(22),
                            color: AppColors.blackColor,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: Dimensions.w(38)), // keeps title centered
                  ],
                ),

                SizedBox(height: Dimensions.h(25)),
                Text(
                  AppStrings.importantTerms.tr,
                  style: AppFonts.medium16,
                ),
                SizedBox(height: Dimensions.h(15)),
                Text(
                  AppStrings.importantTermSubTitle.tr,
                  style: AppFonts.regular12,
                ),
                SizedBox(height: Dimensions.h(25)),

                /// ---------------- TERMS LIST ----------------
                ...List.generate(
                  terms.length,
                      (index) => Padding(
                    padding: EdgeInsets.only(bottom: Dimensions.h(20)),
                    child: Obx(
                          () => TermTile(
                        imagePath: terms[index]["image"]!,
                        text: terms[index]["text"]!.tr,

                        value: controller.checkedTerms[index] ?? false,
                        onChanged: (val) => controller.toggleCheck(index, val),
                        // Show divider for the first two items only (after index 0 and index 1)
                        showDivider: index == 0 || index == 1
                      ),
                    ),
                  ),
                ),

                SizedBox(height: Dimensions.h(50)),

                AppButton(
                  text: AppStrings.verifyWithBank.tr,
                  onPressed: () {
                    Get.toNamed(RoutePath.invite);
                  },
                ),
                SizedBox(height: Dimensions.h(50)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
