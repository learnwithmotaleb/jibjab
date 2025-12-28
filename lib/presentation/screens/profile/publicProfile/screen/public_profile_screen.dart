import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:jibjab/core/routes/route_path.dart';

import '../../../../../utils/app_colors/app_colors.dart';
import '../../../../../utils/app_fonts/app_fonts.dart';
import '../../../../../utils/assets_image/app_images.dart';
import '../../../../../utils/dimensions/dimensions.dart';
import '../../../../../utils/static_strings/static_strings.dart';
import '../../../../widgets/app_button/app_button.dart';
import '../controller/public_profile_controller.dart';
import '../widget/infoField_widget.dart';
import '../widget/row_info_public_profile.dart';

class PublicProfileScreen extends StatefulWidget {
  const PublicProfileScreen({super.key});

  @override
  State<PublicProfileScreen> createState() => _PublicProfileScreenState();
}

class _PublicProfileScreenState extends State<PublicProfileScreen> {
  final controller = Get.put(PublicProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: Dimensions.w(16),
            vertical: Dimensions.h(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              /// ================= HEADER =================
              _buildHeader(),

              SizedBox(height: Dimensions.h(24)),

              /// ================= PROFILE =================
              _buildProfileSection(),

              SizedBox(height: Dimensions.h(36)),

              /// ================= MORE INFO =================
              Text(
                AppStrings.moreInfo.tr,
                style: AppFonts.medium16.copyWith(
                  color: AppColors.blackColor,
                ),
              ),

              SizedBox(height: Dimensions.h(12)),

              _buildMoreInfoBox(),

              SizedBox(height: Dimensions.h(60)),

              /// ================= SAVE BUTTON =================
              AppButton(
                text: AppStrings.save.tr,
                onPressed: () {
                  Get.toNamed(RoutePath.login);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// ================= HEADER =================
  Widget _buildHeader() {
    return SizedBox(
      height: Dimensions.h(48),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: IconButton(
              onPressed: Get.back,
              icon: Icon(
                Icons.arrow_back_ios_new_rounded,
                color: AppColors.primaryColor,
                size: Dimensions.f(22),
              ),
            ),
          ),
          Text(
            AppStrings.publicProfileInfo.tr,
            style: AppFonts.medium20.copyWith(
              color: AppColors.blackColor,
            ),
          ),
        ],
      ),
    );
  }

  /// ================= PROFILE SECTION =================
  Widget _buildProfileSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [

        /// Avatar
        Center(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Obx(() {
                return CircleAvatar(
                  radius: Dimensions.r(56),
                  backgroundColor: AppColors.primaryColor,
                  backgroundImage: controller.pickedImage.value != null
                      ? FileImage(controller.pickedImage.value!)
                      : const AssetImage(AppImages.motalebProfile)
                  as ImageProvider,
                );
              }),

              Positioned(
                right: -2,
                bottom: -2,
                child: GestureDetector(
                  onTap: controller.pickImage,
                  child: Container(
                    width: Dimensions.r(36),
                    height: Dimensions.r(36),
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(.2),
                          blurRadius: 6,
                          offset: const Offset(0, 3),
                        )
                      ],
                    ),
                    child: Icon(
                      Icons.camera_alt,
                      size: Dimensions.f(18),
                      color: AppColors.whiteColor,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),

        SizedBox(height: Dimensions.h(16)),

        /// Name
        Text(
          "Abdul Motaleb",
          style: AppFonts.medium20.copyWith(
            color: AppColors.blackColor,
          ),
        ),

        SizedBox(height: Dimensions.h(10)),

        /// Email & Phone
        Column(
          children: const [
            RowInfoPublicProfile(
              icon: Icons.alternate_email,
              text: "example@gmail.com",
            ),
            SizedBox(height: 8),
            RowInfoPublicProfile(
              icon: Icons.phone,
              text: "(555) 123-4567",
            ),
          ],
        ),
      ],
    );
  }

  /// ================= MORE INFO BOX =================
  Widget _buildMoreInfoBox() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InfoField(
          label: "Registration Date",
          hint: "12 Aug 2025",
        ),
        SizedBox(height: Dimensions.h(12)),

        InfoField(
          label: "Campaigns",
          hint: "24",
        ),
        SizedBox(height: Dimensions.h(12)),

        InfoField(
          label: "Completed Campaigns",
          hint: "21",
        ),
        SizedBox(height: Dimensions.h(12)),

        InfoField(
          label: "Total Earn",
          hint: "\$15,200",
        ),
      ],
    );
  }

}
