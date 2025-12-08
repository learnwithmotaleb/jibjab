import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';


import '../../../utils/app_colors/app_colors.dart';
import '../../../utils/dimensions/dimensions.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    this.maxLines,
    this.textAlign = TextAlign.center,
    this.left = 0,
    this.right = 0,
    this.top = 0,
    this.bottom = 0,
    this.fontSize,
    this.fontWeight = FontWeight.w400,
    this.color = AppColors.blackLightColor,
    required this.text,
    this.overflow = TextOverflow.ellipsis,
    this.decoration,
  });

  final double left;
  final double right;
  final double top;
  final double bottom;
  final double? fontSize;
  final FontWeight fontWeight;
  final Color color;
  final String text;
  final TextAlign textAlign;
  final int? maxLines;
  final TextOverflow overflow;
  final TextDecoration? decoration;

  @override
  Widget build(BuildContext context) {
    final fontSizeValue =
        fontSize ?? Dimensions.getFontSize(Get.width);

    return Padding(
      padding: EdgeInsets.only(
        left: left,
        right: right,
        top: top,
        bottom: bottom,
      ),
      child: Text(
        textAlign: textAlign,
        text,
        maxLines: maxLines,
        overflow: overflow,
        style: GoogleFonts.poppins(
          fontSize: fontSizeValue,
          fontWeight: fontWeight,
          color: color,
          decoration: decoration,
          decorationColor: AppColors.blackLightColor,
          decorationThickness: 2,
        ),
      ),
    );
  }
}
