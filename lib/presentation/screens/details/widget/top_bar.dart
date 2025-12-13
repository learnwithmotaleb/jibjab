import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../utils/app_colors/app_colors.dart';
import '../../../../utils/app_fonts/app_fonts.dart';

class TopBar extends StatelessWidget {
  final String title;

  const TopBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () => Get.back(),
          child: Icon(Icons.arrow_back_ios_new, color: AppColors.primaryColor),
        ),
        Expanded(
          child: Center(
            child: Text(
              title,
              style: AppFonts.medium20.copyWith(fontSize: 20,
              color: AppColors.blackColor),
            ),
          ),
        ),
        SizedBox(width: 40),
      ],
    );
  }
}
