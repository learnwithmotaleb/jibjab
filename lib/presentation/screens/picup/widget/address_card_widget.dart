import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../utils/app_colors/app_colors.dart';
import '../../../../utils/app_fonts/app_fonts.dart';
import '../../../../utils/dimensions/dimensions.dart';

Widget addressCard({
  required String title,
  required VoidCallback onTap,
  required bool isSelected,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      height: Dimensions.h(48),
      margin: EdgeInsets.only(bottom: Dimensions.h(12)),
      padding: EdgeInsets.symmetric(
        horizontal: Dimensions.w(16),
        vertical: Dimensions.h(14),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(Dimensions.r(12)),
        border: Border.all(
          color: isSelected
              ? AppColors.primaryColor
              : AppColors.grayColorAddNewPostScreen,
          width: 1,
        ),
      ),
      child: Row(
        children: [
          /// Left Text
          Expanded(
            child: Text(
              title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: AppFonts.regular16.copyWith(
                color: AppColors.blackColorOrginal.withOpacity(
                  isSelected ? 0.9 : 0.5,
                ),
                height: 1.2,
              ),
            ),
          ),

          /// Right Icon (Selectable)
          Container(
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
              color:
              isSelected ? AppColors.primaryColor : Colors.transparent,
            ),
            child: isSelected
                ? Icon(
              Icons.check,
              size: Dimensions.w(12),
              color: Colors.white,
            )
                : null,
          ),
        ],
      ),
    ),
  );
}
