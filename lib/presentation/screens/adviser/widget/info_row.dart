import 'package:flutter/material.dart';
import '../../../../utils/app_colors/app_colors.dart';
import '../../../../utils/app_fonts/app_fonts.dart';
import '../../../../utils/dimensions/dimensions.dart';

class InfoRowAdviser extends StatelessWidget {
  final IconData icon;
  final String text;

  const InfoRowAdviser({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          size: 18,
          color: AppColors.primaryColor,
        ),
        SizedBox(width: Dimensions.w(8)),
        Text(
          text,
          style: AppFonts.regular14.copyWith(
            color: AppColors.blackColor,
          ),
        ),
      ],
    );
  }
}
