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

import '../widget/r_select_item_widget.dart';

class RSelectTimeSlotScreen extends StatefulWidget {
  const RSelectTimeSlotScreen({super.key});

  @override
  State<RSelectTimeSlotScreen> createState() => _RSelectTimeSlotScreenState();
}

class _RSelectTimeSlotScreenState extends State<RSelectTimeSlotScreen> {
  int selectedIndex = 0;
  Future<void> showDateTime(BuildContext context) async {
    /// 🔹 Date Picker
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2100),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(
              primary: AppColors.primaryColor,
              onPrimary: Colors.white,
              onSurface: AppColors.blackColor,
            ),
          ),
          child: child!,
        );
      },
    );

    if (pickedDate == null) return;

    /// 🔹 Time Picker
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      barrierColor: AppColors.primaryColor.withOpacity(0.3),
      initialTime: TimeOfDay.now(),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(
              primary: AppColors.primaryColor,
              onPrimary: Colors.white,
              onSurface: AppColors.blackColor,
            ),
            timePickerTheme: const TimePickerThemeData(
              hourMinuteTextColor: AppColors.blackColorOrginal,
              dialHandColor: AppColors.whiteColor,
              dialBackgroundColor: Color(0xFFEFEFEF),
            ),
          ),
          child: child!,
        );
      },
    );

    if (pickedTime == null) return;

    /// 🔹 Combine Date + Time
    final DateTime finalDateTime = DateTime(
      pickedDate.year,
      pickedDate.month,
      pickedDate.day,
      pickedTime.hour,
      pickedTime.minute,
    );

    /// 🔹 Console Output
    print("Selected DateTime: $finalDateTime");
  }

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
                    child: RSelectItem(
                      isSelected: selectedIndex == 0,
                      icon: Icons.timer,
                      title: AppStrings.asSoonAsPossible,
                      onTap: () {
                        setState(() => selectedIndex = 0);
                      },
                    ),
                  ),
                  SizedBox(width: Dimensions.w(12)),
                  Expanded(
                    child: RSelectItem(
                      isSelected: selectedIndex == 1,
                      icon: Icons.assistant_photo,
                      title: AppStrings.anyTime.tr,
                      onTap: () {
                        setState(() => selectedIndex = 1);
                        showDateTime(context);
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
                    Get.toNamed(RoutePath.rPickUp);
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
