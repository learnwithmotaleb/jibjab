import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

import '../../../../../utils/app_colors/app_colors.dart';
import '../../../../../utils/app_fonts/app_fonts.dart';
import '../../../../../utils/dimensions/dimensions.dart';
import '../../../../../utils/static_strings/static_strings.dart';
import '../../../../widgets/app_button/app_button.dart';
import '../../../wallet/widget/success_alert.dart';

class RWalletScreen extends StatefulWidget {
  const RWalletScreen({super.key});

  @override
  State<RWalletScreen> createState() => _RWalletScreenState();
}

class _RWalletScreenState extends State<RWalletScreen> {
  bool isSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor, // Add background color for consistency
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Dimensions.w(16)),
          child: Column(
            children: [
              SizedBox(height: Dimensions.h(20)),

              // Header Row
              Row(
                children: [
                  IconButton(
                    onPressed: Get.back,
                    icon: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: AppColors.blackColorOrginal,
                      size: Dimensions.f(22),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        AppStrings.wallet.tr,
                        style: AppFonts.medium20.copyWith(
                          color: AppColors.blackColor,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: Dimensions.w(48)), // Placeholder to balance back button
                ],
              ),

              SizedBox(height: Dimensions.h(40)), // Adjusted for visual balance

              // Wallet Option Card
              Container(
                width: double.infinity,
                height: Dimensions.h(70),
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(Dimensions.r(8)),
                  border: Border.all(width: 1, color: AppColors.primaryColor),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: Dimensions.w(20)),
                  child: Row(
                    children: [
                      // Selection Circle
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isSelected = !isSelected;
                          });
                        },
                        child: Container(
                          height: Dimensions.h(18),
                          width: Dimensions.h(18),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: isSelected
                                  ? AppColors.primaryColor
                                  : AppColors.grayColorAddNewPostScreen,
                              width: 2,
                            ),
                            color: isSelected
                                ? AppColors.primaryColor
                                : Colors.transparent,
                          ),
                          child: isSelected
                              ? Icon(
                            Icons.check,
                            size: Dimensions.w(12),
                            color: AppColors.whiteColor,
                          )
                              : null,
                        ),
                      ),

                      SizedBox(width: Dimensions.w(12)),

                      // Payment Method Text
                      Text(
                        AppStrings.stripe.tr,
                        style: AppFonts.medium16.copyWith(fontSize: Dimensions.f(16)),
                      ),

                      Spacer(),

                      // Amount / Details Placeholder
                      Text(
                        AppStrings.stripe.tr,
                        style: AppFonts.medium20.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Spacer(),

              // Submit Button
              AppButton(
                text: AppStrings.submit.tr,
                onPressed: () {

                  SuccessAlert.show(
                    context,
                    title: 'Success'.tr,
                    message: 'Payment   has been successfully send.'.tr,
                  );


                },
              ),

              SizedBox(height: Dimensions.h(40)), // Bottom spacing
            ],
          ),
        ),
      ),
    );
  }
}
