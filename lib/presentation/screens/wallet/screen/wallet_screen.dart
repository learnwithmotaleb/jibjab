import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

import '../../../../utils/app_colors/app_colors.dart';
import '../../../../utils/app_fonts/app_fonts.dart';
import '../../../../utils/dimensions/dimensions.dart';
import '../../../../utils/static_strings/static_strings.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
          /// ---------------- HEADER ----------------
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
              const SizedBox(width: 48), // balance back button
            ],
          ),

          SizedBox(height: Dimensions.h(24)),
          Container(
            width: double.infinity,
            height: 50,
            child: Row(
              children: [

                Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(100)

                  ),
                  child: Center(
                    child: Icon(Icons.check,color: AppColors.whiteColor,),
                  ),
                ),
                Text("")
              ],
            ),
          )


        ],
      )),
    );
  }
}
