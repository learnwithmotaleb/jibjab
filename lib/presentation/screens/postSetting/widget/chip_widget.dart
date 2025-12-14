import 'package:flutter/material.dart';
import '../../../../utils/app_colors/app_colors.dart';
import '../../../../utils/app_fonts/app_fonts.dart';

class TextChipWidget extends StatelessWidget {
  final String text;
  final double height;
  final Color? backgroundColor;
  final Color? textColor;

  const TextChipWidget({
    super.key,
    required this.text,
    this.height = 32,
    this.backgroundColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: backgroundColor ?? AppColors.primaryColor,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        text,
        style: AppFonts.regular12.copyWith(
          color: textColor ?? AppColors.whiteColor,
        ),
      ),
    );
  }
}
