import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jibjab/core/routes/route_path.dart';
import 'package:jibjab/presentation/widgets/app_button/app_button.dart';
import 'package:jibjab/utils/assets_image/app_images.dart';
import 'package:jibjab/utils/static_strings/static_strings.dart';
import '../../../../utils/app_colors/app_colors.dart';
import '../../../../utils/app_fonts/app_fonts.dart';
import '../../../../utils/dimensions/dimensions.dart';
import '../controller/invite_controller.dart';
import '../widget/invite_image_card.dart';

class InviteScreen extends StatefulWidget {
  const InviteScreen({super.key});

  @override
  State<InviteScreen> createState() => _InviteScreenState();
}

class _InviteScreenState extends State<InviteScreen> {

  final InviteController controller = Get.put(InviteController());



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Dimensions.w(16),
            vertical: Dimensions.h(12),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// ---------------- HEADER ----------------
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: Get.back,
                      icon: const Icon(Icons.close),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.info_outline),
                    ),
                  ],
                ),

                SizedBox(height: Dimensions.h(24)),

                /// ---------------- TITLE ----------------
                Text(
                  AppStrings.invite.tr,
                  style: AppFonts.regular12.copyWith(
                    color: AppColors.blackColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                SizedBox(height: Dimensions.h(20)),

                Text(
                  AppStrings.inviteSubTitle1.tr,
                  style: AppFonts.regular12,
                ),

                SizedBox(height: Dimensions.h(16)),

                Text(
                  AppStrings.inviteSubTitle2.tr,
                  style: AppFonts.regular12,
                ),

                SizedBox(height: Dimensions.h(24)),

                /// ---------------- IMAGE CARD ----------------
                InviteImageCard(),

                SizedBox(height: Dimensions.h(24)),

                /// ---------------- IMAGE TITLE ----------------
                Center(
                  child: Text(
                    AppStrings.inviteImageTile.tr,
                    style: AppFonts.regular20.copyWith(
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),

                SizedBox(height: Dimensions.h(32)),

                /// ---------------- INVITE URL ----------------
                Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        AppStrings.inviteUrl.tr,
                        style: AppFonts.regular16,
                      ),
                      SizedBox(width: Dimensions.w(8)),
                      IconButton(
                        onPressed: controller.copyInviteLink,
                        icon: const Icon(Icons.copy),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: Dimensions.h(40)),

                /// ---------------- CENTER TEXT ----------------
                Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: Dimensions.w(20),
                    ),
                    child: Text(
                      AppStrings.inviteTextCenter.tr,
                      textAlign: TextAlign.center,
                      style: AppFonts.regular16,
                    ),
                  ),
                ),

                SizedBox(height: Dimensions.h(100)),

                /// ---------------- BUTTON ----------------
                AppButton(
                  text: AppStrings.inviteButton.tr,
                  onPressed: () {
                    Get.toNamed(RoutePath.adviser);
                  },
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
