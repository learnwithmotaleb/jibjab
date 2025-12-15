import 'package:flutter/material.dart';
import 'package:jibjab/utils/app_fonts/app_fonts.dart';

class ProfileSectionTitle extends StatelessWidget {
  final String title;

  const ProfileSectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(title, style: AppFonts.medium10),
    );
  }
}
