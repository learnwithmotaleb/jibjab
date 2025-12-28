import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:jibjab/utils/app_fonts/app_fonts.dart';

import '../../../../../utils/app_colors/app_colors.dart';
import '../../../../../utils/dimensions/dimensions.dart';
import '../../../../../utils/static_strings/static_strings.dart';
import '../../../details/widget/top_bar.dart';

class TermsConditionScreen extends StatelessWidget {
  const TermsConditionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Dimensions.w(16),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: Dimensions.h(24)),

                /// Top Bar
                TopBar(title: AppStrings.termsAndCondition.tr),

                SizedBox(height: Dimensions.h(32)),

                /// Title
                Text(
                  AppStrings.termsAndCondition,
                  style: AppFonts.regular12,
                ),

                SizedBox(height: Dimensions.h(16)),

                /// Subtitle
                Text(
                  AppStrings.termsAndConditionSubTitle,
                  style: AppFonts.regular12,
                ),

                SizedBox(height: Dimensions.h(32)),

                /// Terms List
                const _TermsItem(
                  index: "1",
                  text:
                  "It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
                ),
                const _TermsItem(
                  index: "2",
                  text:
                  "It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
                ),
                const _TermsItem(
                  index: "3",
                  text:
                  "It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
                ),
                const _TermsItem(
                  index: "4",
                  text:
                  "It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
                ),
                const _TermsItem(
                  index: "5",
                  text:
                  "It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
                ),
                const _TermsItem(
                  index: "6",
                  text:
                  "It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
                ),

                SizedBox(height: Dimensions.h(100)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// --------------------------------------------
/// Reusable Terms Item Widget
/// --------------------------------------------
class _TermsItem extends StatelessWidget {
  final String index;
  final String text;

  const _TermsItem({
    required this.index,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: Dimensions.h(24)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: Dimensions.w(24),
            child: Text(
              index,
              style: AppFonts.regular12,
            ),
          ),
          SizedBox(width: Dimensions.w(8)),
          Expanded(
            child: Text(
              text,
              style: AppFonts.regular12,
            ),
          ),
        ],
      ),
    );
  }
}
