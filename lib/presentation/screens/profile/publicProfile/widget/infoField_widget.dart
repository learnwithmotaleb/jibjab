import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/app_colors/app_colors.dart';
import '../../../../../utils/app_fonts/app_fonts.dart';
import '../../../../../utils/dimensions/dimensions.dart';

Widget InfoField({
  required String label,
  required String hint,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style: AppFonts.regular12.copyWith(
          color: AppColors.blackColor.withOpacity(.7),
        ),
      ),
      SizedBox(height: Dimensions.h(6)),
      TextFormField(
        readOnly: true,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: AppFonts.regular14.copyWith(
            color: AppColors.blackColor,
          ),
          contentPadding: EdgeInsets.symmetric(
            horizontal: Dimensions.w(12),
            vertical: Dimensions.h(12),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide: BorderSide(
              color: AppColors.blackColor.withOpacity(.2),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide: BorderSide(
              color:AppColors.blackColor.withOpacity(.2),
            ),
          ),
        ),
      ),
    ],
  );
}
