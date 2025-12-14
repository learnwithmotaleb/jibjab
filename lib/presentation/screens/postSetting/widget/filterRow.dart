import 'package:flutter/cupertino.dart';
import 'package:jibjab/utils/app_colors/app_colors.dart';

import '../../../../utils/app_fonts/app_fonts.dart';

/// Filter row widget
Widget filterRow(IconData icon, String text) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
    child: Row(
      children: [
        Icon(icon, size: 20, color:AppColors.blackColor),
        const SizedBox(width: 12),
        Expanded(
          child: Text(
            text,
            style: AppFonts.regular14.copyWith(color:AppColors.blackColor),
          ),
        ),
      ],
    ),
  );
}