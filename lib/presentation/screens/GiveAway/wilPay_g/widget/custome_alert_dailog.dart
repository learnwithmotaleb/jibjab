import 'package:flutter/material.dart';
import 'package:jibjab/presentation/widgets/app_button/app_button.dart';
import 'package:jibjab/utils/app_colors/app_colors.dart';
import 'package:jibjab/utils/static_strings/static_strings.dart';

import '../../../../../utils/dimensions/dimensions.dart';

class CustomInputDialog {


  static Future<String?> show({
    required BuildContext context,
    required String title,
    required String body,
    String hintText = '',
    String buttonText = "OK",
  }) async {
    final TextEditingController controller = TextEditingController();

    return showDialog<String>(
      context: context,
      barrierDismissible: false,
      builder: (_) {
        return Dialog(
          backgroundColor: AppColors.whiteColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Title
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 5),

                // Body
                Center(
                  child: Text(
                    body,
                    style: const TextStyle(
                      fontSize: 14,
                      color: AppColors.blackColor,
                    ),
                  ),
                ),
                const SizedBox(height: 12),

                // TextFormField
                TextFormField(
                  controller: controller,
                  decoration: InputDecoration(
                    hintText: hintText,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(Dimensions.r(12)),
                      borderSide: BorderSide(color: AppColors.primaryColor),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(Dimensions.r(12)),
                      borderSide: BorderSide(color: AppColors.primaryColor),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 10),
                  ),
                ),
                const SizedBox(height: 40),

                // OK Button
                AppButton(text: AppStrings.redeem, onPressed: (){
                  Navigator.pop(context);
                },
                borderRadius: 0,),
                 SizedBox(height: 20),
              ],
            ),
          ),
        );
      },
    );
  }
}
