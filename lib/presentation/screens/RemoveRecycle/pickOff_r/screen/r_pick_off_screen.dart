import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:jibjab/core/routes/route_path.dart';

import '../../../../../utils/app_colors/app_colors.dart';
import '../../../../../utils/app_fonts/app_fonts.dart';
import '../../../../../utils/dimensions/dimensions.dart';
import '../../../../../utils/static_strings/static_strings.dart';

import '../../../../widgets/app_button/app_button.dart';
import '../../../details/widget/top_bar.dart';

import '../controller/r_pick_off_controller.dart';
import '../widget/r_add_location_card_widget.dart';

class RPickOffScreen extends StatefulWidget {
  const RPickOffScreen({super.key});

  @override
  State<RPickOffScreen> createState() => _RPickOffScreenState();
}

class _RPickOffScreenState extends State<RPickOffScreen> {
  final controller = Get.put(RPickOffController());

  int selectedIndex = -1;
  bool canHelpCarry = false;

  final List<String> addresses = [
    'Driveway - No need to meet',
    'Stairwell - No need to meet',
    'Reception',
    'Garden - No need to meet',
    'Courtyard - No need to meet',
    'I will meet and show where',
    'In the home',
    'In store',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Dimensions.w(16)),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: Dimensions.h(20)),
                TopBar(title: AppStrings.pickOff.tr),
                SizedBox(height: Dimensions.h(20)),
            
                SizedBox(height: Dimensions.h(16)),
            
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.56,
                  child: ListView.separated(
                    padding: EdgeInsets.zero,
                    itemCount: addresses.length,
                    separatorBuilder: (_, __) =>
                        SizedBox(height: Dimensions.h(0)),
                    itemBuilder: (context, index) {
                      return addLocationCardWidget(
                        title: addresses[index].tr,
                        isSelected: selectedIndex == index,
                        onTap: () {
                          setState(() => selectedIndex = index);
                        },
                      );
                    },
                  ),
                ),
            
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.transparent,
                      borderRadius: BorderRadius.circular(Dimensions.r(12)),
                    ),
                    child: Row(
                      children: [
                        Text(
                         AppStrings.canHelpCarryAtPickUp.tr,
                          style: AppFonts.regular14.copyWith(
                            color: AppColors.blackColorOrginal,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          canHelpCarry ? 'On' : 'Off',
                          style: AppFonts.regular12.copyWith(
                            color: AppColors.whiteColor,
                          ),
                        ),
                        Switch(
                          value: canHelpCarry,
                          onChanged: (value) {
                            setState(() => canHelpCarry = value);
                          },
                          activeThumbColor: AppColors.primaryColor,
                          activeTrackColor:
                          AppColors.inactiveTrackerSwitchColor,
            
                          inactiveTrackColor:
                          AppColors.grayColor,
                          inactiveThumbColor:
                          AppColors.blackLightColor,
                        ),
                      ],
                    ),
                  ),
                ),
            
            
            
            
            
                SizedBox(height: Dimensions.h(40)),
                /// 🚀 Continue Button
                Padding(
                  padding: EdgeInsets.only(bottom: Dimensions.h(16)),
                  child: AppButton(
                    text: AppStrings.continueButton,
                    onPressed: () {
                     Get.toNamed(RoutePath.rPickOffMap);
                    },
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
