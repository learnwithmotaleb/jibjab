
import 'package:flutter/cupertino.dart';

import '../../../../utils/app_colors/app_colors.dart';
import '../../../../utils/app_fonts/app_fonts.dart';

/// Distance Chip Widget
Widget distanceChip(String text, {bool isSelected = false}) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
    decoration: BoxDecoration(
      color: isSelected ? AppColors.primaryColor : AppColors.whiteColor,
      borderRadius: BorderRadius.circular(8),
      border: Border.all(
        color: isSelected ? AppColors.primaryColor :  AppColors.primaryColor,
        width: 1,
      ),
    ),
    child: Text(
      text,
      style: AppFonts.regular12.copyWith(
        color: isSelected ? AppColors.whiteColor : AppColors.blackColor,
      ),
    ),
  );
}