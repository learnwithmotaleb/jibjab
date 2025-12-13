import 'package:flutter/material.dart';
import 'package:jibjab/utils/app_colors/app_colors.dart';
import '../../../../utils/dimensions/dimensions.dart';
import '../../../../utils/app_fonts/app_fonts.dart';

class TermTile extends StatelessWidget {
  final String imagePath;
  final String text;
  final bool value;
  final Function(bool) onChanged;
  final bool showDivider; // new

  const TermTile({
    super.key,
    required this.imagePath,
    required this.text,
    required this.value,
    required this.onChanged,
    this.showDivider = false, // default false
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Image.asset(
            imagePath,
            width: Dimensions.w(24),
            height: Dimensions.h(24),
          ),
          title: Text(
            text,
            style: AppFonts.regular12,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: Dimensions.w(20)),
          child: CheckboxListTile(
            title: Text(
              "I’ve read and approve this term.",
              style: AppFonts.regular12,
            ),
            value: value,
            activeColor: AppColors.primaryColor,
            onChanged: (bool? val) => onChanged(val ?? false),
            controlAffinity: ListTileControlAffinity.leading,
          ),
        ),
        if (showDivider) Padding(
          padding: const EdgeInsets.all(8.0),
          child: Divider(height: 1, thickness: 1,),
        ), // optional divider
      ],
    );
  }
}
