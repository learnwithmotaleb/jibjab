import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jibjab/core/routes/route_path.dart';
import 'package:jibjab/presentation/screens/details/widget/top_bar.dart';
import 'package:jibjab/presentation/widgets/app_button/app_button.dart';
import 'package:jibjab/utils/app_colors/app_colors.dart';
import 'package:jibjab/utils/app_fonts/app_fonts.dart';
import 'package:jibjab/utils/dimensions/dimensions.dart';
import 'package:jibjab/utils/static_strings/static_strings.dart';

class WasteTypeScreen extends StatefulWidget {
  const WasteTypeScreen({super.key});

  @override
  State<WasteTypeScreen> createState() => _WasteTypeScreenState();
}

class _WasteTypeScreenState extends State<WasteTypeScreen> {
  bool isSelected = false;

  final Map<String, List<String>> wasteCategories = {
    'Recyclables': ['Glass packaging', 'Plastic bottles', 'Paper', 'Metal cans', 'Cardboard'],
    'Food waste': ['Vegetable scraps', 'Fruit scraps', 'Cooked food', 'Eggshells', 'Coffee grounds'],
    'Household hazardous waste': ['Batteries', 'Paint', 'Cleaning chemicals', 'Light bulbs'],
  };

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      bottomNavigationBar: Container(
        height: Dimensions.h(180),
        decoration: BoxDecoration(color: const Color(0xffF2F2F7)),
        child: Padding(
          padding: EdgeInsets.all(Dimensions.h(8)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimensions.w(18), vertical: Dimensions.h(10)),
                child: Row(
                  children: [
                    Icon(Icons.info_outline, color: AppColors.primaryColor, size: Dimensions.h(20)),
                    SizedBox(width: Dimensions.w(8)),
                    Expanded(
                      child: Text(
                        'Select all relevant waste types. Select at least one category to continue.'.tr,
                        style: AppFonts.regular12,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: Dimensions.h(20)),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimensions.w(18)),
                child: AppButton(
                  text: AppStrings.continueButton.tr,
                  onPressed: () {
                    Get.toNamed(RoutePath.rTitleDescription);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: Dimensions.w(8)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: Dimensions.h(5)),
               TopBar(title: AppStrings.wasteType.tr),
              SizedBox(height: Dimensions.h(16)),
              const Divider(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimensions.w(18)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(AppStrings.allWasteIsSorted.tr, style: AppFonts.regular16),
                    Switch(
                      thumbColor: MaterialStateProperty.all(AppColors.grayColor),
                      activeTrackColor: AppColors.primaryColor,
                      activeThumbColor: AppColors.primaryColor,
                      inactiveTrackColor: AppColors.inactiveTrackerSwitchColor,
                      inactiveThumbColor: AppColors.inactiveTrackerSwitchColor,
                      value: isSelected,
                      onChanged: (value) {
                        setState(() {
                          isSelected = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimensions.w(18), vertical: Dimensions.h(5)),
                child: Text(
                  AppStrings.unsortedCollectionTakes.tr,
                  style: TextStyle(color: Colors.grey, fontSize: Dimensions.h(12)),
                ),
              ),
              const Divider(),
              SizedBox(height: Dimensions.h(10)),

              // Dynamic categories
              ...wasteCategories.entries.map((entry) {
                return Padding(
                  padding: EdgeInsets.only(bottom: Dimensions.h(20)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(entry.key, style: AppFonts.medium20.copyWith(color: AppColors.blackColorOrginal)),
                      SizedBox(height: Dimensions.h(10)),
                      ...entry.value.map((item) => Padding(
                        padding: EdgeInsets.symmetric(vertical: Dimensions.h(6)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(child: Text(item, style: AppFonts.regular16)),
                            Icon(Icons.info_outline_rounded, color: AppColors.primaryColor, size: Dimensions.h(20)),
                          ],
                        ),
                      )),
                    ],
                  ),
                );
              }).toList(),
            ],
          ),
        ),
      ),
    );
  }
}
