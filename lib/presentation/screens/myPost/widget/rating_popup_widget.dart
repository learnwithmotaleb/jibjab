import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:jibjab/core/routes/route_path.dart';
import 'package:jibjab/utils/assets_image/app_images.dart';

import '../../../../core/theme/light_theme.dart' as Colors;
import '../../../../utils/app_colors/app_colors.dart';
import '../../../../utils/app_fonts/app_fonts.dart';
import '../../../../utils/dimensions/dimensions.dart';
import '../../../../utils/static_strings/static_strings.dart';

class RatingPopup extends StatefulWidget {
  const RatingPopup({super.key});

  @override
  State<RatingPopup> createState() => _RatingPopupState();
}

class _RatingPopupState extends State<RatingPopup> {
  int rating = 0;
  final TextEditingController feedbackController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Dialog(
      backgroundColor: AppColors.whiteColor,

      insetPadding: EdgeInsets.symmetric(
        horizontal: Dimensions.w(20),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Dimensions.r(14)),
      ),
      child: SingleChildScrollView(

        child: Padding(
          padding: EdgeInsets.all(Dimensions.r(20)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [

              SizedBox(height: Dimensions.h(8)),

              Icon(Icons.verified,size: 80,color: AppColors.primaryColor,),

              SizedBox(height: Dimensions.h(8)),

              /// Title
              Text(
                "Give rating out of 5!",
                style: AppFonts.regular20.copyWith(
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),

              SizedBox(height: Dimensions.h(8)),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(5, (index) {
                  final isSelected = index < rating;
                  return GestureDetector(
                    onTap: () {
                      setState(() => rating = index + 1);
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: Dimensions.w(4),
                      ),
                      child: Icon(
                        isSelected ? Icons.star : Icons.star_border,
                        color: AppColors.pendingBackground,
                        size: Dimensions.r(36),
                      ),
                    ),
                  );
                }),
              ),

              SizedBox(height: Dimensions.h(14)),

              /// Feedback Label
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Add feedback",
                  style: AppFonts.regular16.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),

              SizedBox(height: Dimensions.h(6)),

              /// ✍️ Feedback Field
              TextField(
                controller: feedbackController,
                maxLines: 3,
                decoration: InputDecoration(
                  hintText: "Write your feedback",
                  hintStyle: AppFonts.regular14.copyWith(
                    color: AppColors.blackColor.withOpacity(0.5)
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: Dimensions.w(12),
                    vertical: Dimensions.h(10),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(Dimensions.r(8)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(Dimensions.r(8)),
                    borderSide: const BorderSide(
                      color: AppColors.primaryColor,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(Dimensions.r(8)),
                    borderSide: const BorderSide(
                      color: AppColors.primaryColor,
                      width: 1.5,
                    ),
                  ),
                ),
              ),

              SizedBox(height: Dimensions.h(16)),

              /// 🔘 Buttons
              Row(
                children: [

                  /// Submit
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Get.back(result: {
                          "rating": rating,
                          "feedback": feedbackController.text,
                        });
                        Get.toNamed(RoutePath.customerReview);
                      },
                      child: Container(
                        height: Dimensions.h(40),
                        decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.circular(
                            Dimensions.r(8),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            AppStrings.submit.tr,
                            style: AppFonts.regular14.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(width: Dimensions.w(24)),

                  /// Cancel
                  Expanded(
                    child: GestureDetector(
                      onTap: Get.back,
                      child: Container(
                        height: Dimensions.h(40),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                            Dimensions.r(8),
                          ),
                          border: Border.all(
                            color: AppColors.primaryColor,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            AppStrings.cancelButton.tr,
                            style: AppFonts.regular14.copyWith(
                              color: AppColors.primaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),



                ],
              ),
              SizedBox(height: Dimensions.h(20)),
            ],
          ),
        ),
      ),
    );
  }
}
