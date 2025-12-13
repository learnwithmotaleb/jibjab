import 'package:flutter/material.dart';
import '../../../../utils/app_colors/app_colors.dart';
import '../../../../utils/app_fonts/app_fonts.dart';

class InfoAlertBox extends StatelessWidget {
  final String text;

  const InfoAlertBox({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: AppColors.primaryColor),
      ),
      child: Row(
        children: [
          Icon(Icons.man, color: AppColors.primaryColor),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              text,
              style: AppFonts.regular12.copyWith(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
