import 'package:flutter/material.dart';
import '../../../../utils/app_colors/app_colors.dart';
import '../../../../utils/app_fonts/app_fonts.dart';

class ImageWithPrice extends StatelessWidget {
  final String image;
  final String price;
  final double height;

  const ImageWithPrice({
    super.key,
    required this.image,
    required this.price,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: Image.asset(
            image,
            width: double.infinity,
            height: height,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 12,
          left: 12,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Pay",
                  style: AppFonts.regular12.copyWith(
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.bold,
                  )),
              Text("\$$price",
                  style: AppFonts.medium18.copyWith(
                      color: AppColors.whiteColor, fontSize: 18)),
            ],
          ),
        ),
      ],
    );
  }
}
