import 'package:flutter/material.dart';
import '../../../../utils/app_colors/app_colors.dart';

class CustomerReviewRating extends StatelessWidget {
  final double rating;

  const CustomerReviewRating({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(5, (i) {
        if (i < rating.floor()) {
          return Icon(Icons.star, color: AppColors.pendingBackground, size: 20);
        } else if (i == rating.floor() && rating % 1 >= 0.5) {
          return Icon(Icons.star_half, color: AppColors.primaryColor, size: 20);
        } else {
          return Icon(Icons.star_border, color: AppColors.blackColorOrginal, size: 20);
        }
      }),
    );
  }
}
