import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:jibjab/core/routes/route_path.dart';
import 'package:jibjab/utils/app_colors/app_colors.dart';

import '../../../../../utils/dimensions/dimensions.dart';
import '../../../../../utils/static_strings/static_strings.dart';
import '../../../details/widget/top_bar.dart';
import '../widget/account_setting_widget.dart';

class AccountSettingScreen extends StatelessWidget {
  const AccountSettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Dimensions.w(16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: Dimensions.h(24)),

              /// Top Bar
              TopBar(title: AppStrings.accountSetting.tr),

              SizedBox(height: Dimensions.h(32)),

              /// Change Password
              AccountSettingMenuTile(
                width: double.infinity,
                height: Dimensions.h(56),
                icon: Icons.lock_outline,
                title: AppStrings.changePassword.tr,
                fontSize: 14,
                color: AppColors.whiteColor,
                iconColor: AppColors.primaryColor,
                textColor: AppColors.blackColorOrginal,
                onTap: () {
                  Get.toNamed(RoutePath.changePassword);
                },
              ),

              SizedBox(height: Dimensions.h(12)),

              /// Delete Account
              AccountSettingMenuTile(
                width: double.infinity,
                height: Dimensions.h(56),
                icon: Icons.person_outline,
                title: AppStrings.deleteAccount.tr,
                fontSize: 14,
                color: AppColors.whiteColor,
                iconColor: AppColors.redColor,
                textColor: AppColors.redColor,
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
