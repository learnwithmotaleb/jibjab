import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:jibjab/core/routes/route_path.dart';

import '../../../../../utils/app_colors/app_colors.dart';
import '../../../../../utils/app_fonts/app_fonts.dart';
import '../../../../../utils/dimensions/dimensions.dart';
import '../../../../../utils/static_strings/static_strings.dart';
import '../../../../widgets/app_button/app_button.dart';

import '../widget/g_select_item_widget.dart';

class GSelectTimeSlotScreen extends StatefulWidget {
  const GSelectTimeSlotScreen({super.key});

  @override
  State<GSelectTimeSlotScreen> createState() => _GSelectTimeSlotScreenState();
}

class _GSelectTimeSlotScreenState extends State<GSelectTimeSlotScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Dimensions.w(16),
            vertical: Dimensions.h(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Cancel Button
              TextButton(
                onPressed: Get.back,
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  minimumSize: Size.zero,
                ),
                child: Text(
                  AppStrings.cancelButton.tr,
                  style: AppFonts.regular16.copyWith(
                    color: AppColors.primaryColor
                  )
                ),
              ),

              SizedBox(height: Dimensions.h(40)),

              /// Title
              Center(
                child: Text(
                  AppStrings.selectTimeSlotTitle.tr,
                  style: AppFonts.medium18,
                  textAlign: TextAlign.center,
                ),
              ),

              SizedBox(height: Dimensions.h(12)),

              /// Subtitle
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: Dimensions.w(32),
                ),
                child: Text(
                  AppStrings.selectTimeSlotSubTitle.tr,
                  style: AppFonts.regular12,
                  textAlign: TextAlign.center,
                  softWrap: true,
                ),
              ),

              SizedBox(height: Dimensions.h(32)),

              /// Select Items Row
              Row(
                children: [
                  Expanded(
                    child: GSelectItem(
                      isSelected: selectedIndex == 0,
                      icon: Icons.timer,
                      title: AppStrings.asSoonAsPossible.tr,
                      onTap: () {
                        setState(() => selectedIndex = 0);
                      },
                    ),
                  ),
                  SizedBox(width: Dimensions.w(12)),
                  Expanded(
                    child: GSelectItem(
                      isSelected: selectedIndex == 1,
                      icon: Icons.assistant_photo,
                      title: AppStrings.anyTime.tr,
                      onTap: () {
                        setState(() => selectedIndex = 1);
                      },
                    ),
                  ),
                ],
              ),

              SizedBox(height: Dimensions.h(30)),

              /// Info Text
              Center(
                child: Text(
                  AppStrings.hideExactTimeSlot.tr,
                  style: AppFonts.regular16.copyWith(
                    color: AppColors.primaryColor,
                  ),
                ),
              ),

              const Spacer(),

              /// Continue Button
              Padding(
                padding: EdgeInsets.only(
                  bottom: Dimensions.h(16),
                ),
                child: AppButton(
                  text: AppStrings.continueButton.tr,
                  onPressed: () {
                    Get.toNamed(RoutePath.gPickUp);
                  },
                ),
              ),
              SizedBox(height: Dimensions.h(100)),
            ],
          ),
        ),
      ),
    );
  }
}
