import 'package:flutter/material.dart';
import 'package:jibjab/utils/app_colors/app_colors.dart';

class CustomAlertDialog {
  static show({
    required BuildContext context,
    required String title,
    required String body,
    VoidCallback? onYes,
    VoidCallback? onNo,
  }) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) {
        return Dialog(
          backgroundColor: AppColors.whiteColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Title
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                const SizedBox(height: 12),

                /// Body
                Text(
                  body,
                  style: const TextStyle(
                    fontSize: 14,
                    color: AppColors.blackColor,
                  ),
                ),

                const SizedBox(height: 24),

                /// Actions
                Row(
                  children: [
                    /// NO Button
                    Expanded(
                      child: GestureDetector(
                        onTap: onNo ?? () => Navigator.pop(context),
                        child: Container(
                          height: 45,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(
                              color: AppColors.primaryColor,
                              width: 1.5,
                            ),
                          ),
                          child: Text(
                            "No",
                            style: TextStyle(
                              color:AppColors.primaryColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(width: 12),

                    /// YES Button
                    Expanded(
                      child: GestureDetector(
                        onTap: onYes,
                        child: Container(
                          height: 45,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: const Text(
                            "Yes",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
