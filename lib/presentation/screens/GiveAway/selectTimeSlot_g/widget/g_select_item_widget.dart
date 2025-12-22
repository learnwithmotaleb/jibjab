import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jibjab/utils/app_colors/app_colors.dart';
import 'package:jibjab/utils/app_fonts/app_fonts.dart';

import '../../../../../utils/dimensions/dimensions.dart';


class GSelectItem extends StatelessWidget {
  final bool isSelected;
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  const GSelectItem({
    super.key,
    required this.isSelected,
    required this.icon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(1),
      child: Container(
        width:Dimensions.w(146),
        height:Dimensions.h(64),
        decoration: BoxDecoration(
          color: isSelected ?  AppColors.primaryColor.withOpacity(0.5): AppColors.whiteColor,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: isSelected ?AppColors.transparent : AppColors.primaryColor,
            width: 1,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 20,
              color: isSelected ? AppColors.blackColorOrginal : AppColors.primaryColor,
            ),
            SizedBox(width: Dimensions.w(10)),
            Text(
              title,
              softWrap: true,
              style: AppFonts.regular16.copyWith(
                fontWeight: FontWeight.w400,
                color: isSelected ? AppColors.blackColor : AppColors.primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
