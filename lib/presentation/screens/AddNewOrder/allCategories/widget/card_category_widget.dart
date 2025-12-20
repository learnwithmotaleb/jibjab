
import 'package:flutter/material.dart';

import '../../../../../utils/app_colors/app_colors.dart';
import '../../../../../utils/dimensions/dimensions.dart';


class CategoryCard extends StatelessWidget {
  final String title;
  final String image;
  final List<Color> gradientColors;
  final VoidCallback onTap;

  const CategoryCard({
    super.key,
    required this.title,
    required this.image,
    required this.gradientColors,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(6),
      child: SizedBox(
        width: double.infinity,
        height: Dimensions.h(72),
        child: Card(
          elevation: 1,
          color: AppColors.whiteColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
          child: Row(
            children: [
              /// Gradient Strip
              Container(
                width: Dimensions.w(24),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: gradientColors,
                  ),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(6),
                    bottomLeft: Radius.circular(6),
                  ),
                ),
              ),
              SizedBox(width: Dimensions.w(12)),

              /// Image
              Image.asset(
                image,
                width: Dimensions.w(32),
                height: Dimensions.w(32),
                fit: BoxFit.contain,
              ),
              SizedBox(width: Dimensions.w(12)),

              /// Title
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: Dimensions.w(14),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
