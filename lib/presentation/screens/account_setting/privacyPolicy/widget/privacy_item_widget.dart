import 'package:flutter/cupertino.dart';

import '../../../../../utils/app_fonts/app_fonts.dart';
import '../../../../../utils/dimensions/dimensions.dart';

/// --------------------------------------------
/// Reusable Terms Item Widget
/// --------------------------------------------
class PrivacyItemWidget extends StatelessWidget {
  final String index;
  final String text;

  const PrivacyItemWidget({
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
