
// Custom Feature Item Widget for better control over height & spacing
import 'package:flutter/cupertino.dart';

import '../../../../utils/app_colors/app_colors.dart';
import '../../../../utils/app_fonts/app_fonts.dart';
import '../../../../utils/dimensions/dimensions.dart';

class
FeatureItem extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;

   const FeatureItem({
    required this.image,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          image,
          width: Dimensions.w(30),  // Set image width
          height: Dimensions.h(30), // Set image height
          fit: BoxFit.contain,
        ),
        SizedBox(width: Dimensions.w(16)),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: AppFonts.medium16.copyWith(
                  color: AppColors.blackColor,
                ),
              ),
              SizedBox(height: Dimensions.h(4)),
              Text(
                subtitle,
                style: AppFonts.regularSubTitle12,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
