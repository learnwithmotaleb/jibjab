import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:jibjab/core/routes/route_path.dart';
import 'package:jibjab/presentation/widgets/app_button/app_button.dart';
import 'package:jibjab/utils/app_colors/app_colors.dart';
import 'package:jibjab/utils/app_fonts/app_fonts.dart';
import 'package:lottie/lottie.dart';

import '../../../../utils/dimensions/dimensions.dart';

class SuccessAlert {
  static show(
      BuildContext context, {
        String title = 'Success',
        String message = 'Operation completed successfully',
        String buttonText = 'OK',
      }) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [

                Lottie.asset(
                  'assets/lottie/check_mark_success.json',
                  height: 120,
                  repeat: false,
                  delegates: LottieDelegates(
                    values: [
                      ValueDelegate.color(
                        const ['**'], // target all layers
                        value: AppColors.primaryColor,
                      ),
                    ],
                  ),
                ),


                SizedBox(height: Dimensions.h(10)),


                Text(
                  title,
                  style: AppFonts.regular20.copyWith(
                color: AppColors.blackColorOrginal
                )
                ),

                SizedBox(height: Dimensions.h(10)),



                Text(
                  message,
                  textAlign: TextAlign.center,
                  style: AppFonts.regular12.copyWith(
                    color: AppColors.blackColorOrginal
                  )
                ),

                SizedBox(height: Dimensions.h(10)),

                // ✅ OK Button
                SizedBox(
                  child: AppButton(text: "Ok",width: 78,height: 34,
                      borderRadius: 3,
                      onPressed: (){
                    Get.toNamed(RoutePath.login);
                  }),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
