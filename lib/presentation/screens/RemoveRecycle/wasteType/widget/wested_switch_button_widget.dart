import 'package:flutter/material.dart';
import 'package:jibjab/utils/app_colors/app_colors.dart';
import 'package:jibjab/utils/app_fonts/app_fonts.dart';

class WestedSwitchRow extends StatelessWidget {
  final IconData? icon;
  final String label;
  final bool isActive;
  final ValueChanged<bool>? onChanged;

  const WestedSwitchRow({
    super.key,
     this.icon,
    required this.label,
    required this.isActive,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: Row(
        children: [

          SizedBox(width: 12),
          Text(
            label,
            style: AppFonts.regular16,
          ),
          Spacer(),

          SizedBox(width: 8),
          Switch(
            value: isActive,
            onChanged: onChanged,
            activeThumbColor: AppColors.primaryColor,
            activeTrackColor:  AppColors.inactiveTrackerSwitchColor,
            inactiveTrackColor: AppColors.inactiveTrackerSwitchColor,
            inactiveThumbColor: AppColors.inactiveSwitchColor,
            trackOutlineColor: WidgetStateProperty.all(AppColors.whiteColor),
          ),
        ],
      ),
    );
  }
}
