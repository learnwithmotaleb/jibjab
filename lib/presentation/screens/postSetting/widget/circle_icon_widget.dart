import 'package:flutter/material.dart';
import '../../../../utils/app_colors/app_colors.dart';

class CircleIconWidget extends StatelessWidget {
  final String image;
  final double size;
  final EdgeInsets padding;
  final Color? backgroundColor;

  const CircleIconWidget({
    super.key,
    required this.image,
    this.size = 44,
    this.padding = const EdgeInsets.all(8),
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        color: backgroundColor ?? AppColors.primaryColor,
        shape: BoxShape.circle,
      ),
      padding: padding,
      child: Image.asset(image),
    );
  }
}
