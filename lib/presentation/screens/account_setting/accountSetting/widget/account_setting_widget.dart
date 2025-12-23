import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:jibjab/utils/app_colors/app_colors.dart';
import 'package:jibjab/utils/app_fonts/app_fonts.dart';

class AccountSettingMenuTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color color;
  final Color iconColor;
  final Color textColor;
  final VoidCallback onTap;
  final double fontSize;
  final double width;
  final double height;

  const AccountSettingMenuTile({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap, required this.color, required this.iconColor, required this.textColor, required this.fontSize, required this.width, required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
          boxShadow:  [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 3,
              offset: Offset(0, 2),
            ),
          ],
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            Icon(icon, color: iconColor, size: 24),
            const SizedBox(width: 12),
            Text(
              title.tr,
              style: AppFonts.medium16.copyWith(fontSize: fontSize,
              color: textColor),
            ),
            const Spacer(),
             Icon(
              Icons.arrow_forward_ios_rounded,
              size: 18,
              color: iconColor,
            ),
          ],
        ),
      ),
    );
  }
}
