import 'package:flutter/cupertino.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

import '../../../../utils/app_colors/app_colors.dart';
import '../../../../utils/app_fonts/app_fonts.dart';
import '../../../../utils/assets_image/app_images.dart';
import '../../../../utils/dimensions/dimensions.dart';
import '../../../../utils/static_strings/static_strings.dart';

class InviteImageCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(Dimensions.r(8)),
          child: Image.asset(
            AppImages.inviteImage,
            width: double.infinity,
            height: Dimensions.h(200),
            fit: BoxFit.cover,
          ),
        ),

        /// Price Badge
        Positioned(
          top: Dimensions.h(12),
          left: 0,
          child: Container(
            width: Dimensions.w(72),
            height: Dimensions.h(40),
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.horizontal(
                right: Radius.circular(Dimensions.r(100)),
              ),
            ),
            alignment: Alignment.center,
            child: Text(
              "\$100",
              style: AppFonts.regular12.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),

        /// App Name
        Positioned(
          top: Dimensions.h(12),
          right: Dimensions.w(12),
          child: Text(
            AppStrings.appName.tr,
            style: AppFonts.regular12.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
