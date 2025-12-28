import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jibjab/core/routes/route_path.dart';
import 'package:jibjab/presentation/screens/details/widget/top_bar.dart';
import 'package:jibjab/presentation/widgets/app_button/app_button.dart';
import 'package:jibjab/utils/app_colors/app_colors.dart';
import 'package:jibjab/utils/app_fonts/app_fonts.dart';
import 'package:jibjab/utils/dimensions/dimensions.dart';
import 'package:jibjab/utils/static_strings/static_strings.dart';

import '../../../postSetting/widget/setting_row_widget.dart';
import '../widget/wested_switch_button_widget.dart';

class WasteTypeScreen extends StatefulWidget {
  const WasteTypeScreen({super.key});

  @override
  State<WasteTypeScreen> createState() => _WasteTypeScreenState();
}

class _WasteTypeScreenState extends State<WasteTypeScreen> {
  bool isSelected = false;
  bool isWested = false;

  final Map<String, List<String>> wasteCategories = {
    'Recyclables': ['Glass packaging', 'Paper packaging cardboard ','Newspapers', 'Plastic bottles',"Newspapers", 'Paper', 'Metal cans', 'Cardboard'],
    'Food waste': ['Vegetable scraps', 'Fruit scraps', 'Cooked food', 'Eggshells', 'Coffee grounds'],
    'Household hazardous waste': ['Batteries', 'Paint', 'Cleaning chemicals', 'Light bulbs'],
  };

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppColors.whiteColor,
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
                        style: AppFonts.regular14,
                        softWrap: true,
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
              WestedSwitchRow(
                label: AppStrings.allWasteIsSorted.tr,
                isActive: isWested,
                onChanged: (value) {
                  setState(() {
                    isWested = value;
                  });
                },
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

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: wasteCategories.entries.map((entry) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: Dimensions.h(24)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        /// 🔹 Category Title
                        Text(
                          entry.key,
                          style: AppFonts.medium18.copyWith(
                            color: AppColors.blackColorOrginal,
                          ),
                        ),

                        SizedBox(height: Dimensions.h(12)),

                        /// 🔹 Items List
                        ...entry.value.asMap().entries.map((itemEntry) {
                          final index = itemEntry.key;
                          final item = itemEntry.value;
                          final isLastItem = index == entry.value.length - 1;
                          final isLastTwoItem = index == entry.value.length - 2;

                          return Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: Dimensions.h(8),
                            ),
                            child: Row(
                              children: [
                                /// 🔹 Item Text
                                Expanded(
                                  child: Text(
                                    item,
                                    style: AppFonts.regular16,
                                  ),
                                ),

                                /// 🔹 Show icon ONLY for last item
                                if (isLastItem)
                                  Icon(
                                    Icons.info_outline_rounded,
                                    size: Dimensions.h(18),
                                    color: AppColors.primaryColor,
                                  ),
                              ],
                            ),
                          );
                        }),
                      ],
                    ),
                  );
                }).toList(),
              )



            ],
          ),
        ),
      ),
    );
  }
}
