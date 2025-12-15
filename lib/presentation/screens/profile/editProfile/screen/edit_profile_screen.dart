import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:get/get_utils/src/get_utils/get_utils.dart';
import 'package:jibjab/presentation/screens/profile/editProfile/controller/edit_profile_controller.dart';
import 'package:jibjab/presentation/widgets/app_button/app_button.dart';
import 'package:jibjab/utils/app_colors/app_colors.dart';
import 'package:jibjab/utils/assets_image/app_images.dart';
import 'package:jibjab/utils/static_strings/static_strings.dart';

import '../../../../../utils/app_fonts/app_fonts.dart';
import '../../../../../utils/dimensions/dimensions.dart';
import '../../../details/widget/top_bar.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {

  final controller = Get.put(EditProfileController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TopBar(title: AppStrings.editProfile.tr),
              SizedBox(height: Dimensions.h(30)),

              Stack(
                children: [
                  Obx(() {
                    return CircleAvatar(
                      radius: Dimensions.r(56),
                      backgroundColor: AppColors.primaryColor,
                      backgroundImage: controller.pickedImage.value != null
                          ? FileImage(controller.pickedImage.value!)
                          : AssetImage(AppImages.motalebProfile) as ImageProvider,
                    );
                  }),

                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: GestureDetector(
                      onTap: () => controller.pickImage(),
                      child: Container(
                        width: 35,
                        height: 35,

                        decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.circular(100),
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 1,
                              color: AppColors.pendingBackground,
                              blurRadius: 5,
                            )
                          ]

                        ),
                        child: Icon(
                          Icons.camera_alt,color: AppColors.whiteColor,
                        ),
                      ),
                    ),
                  )


                ],
              ),

              SizedBox(height: Dimensions.h(20)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Form(
                  key: controller.formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(AppStrings.name.tr, style: AppFonts.medium16),
                      const SizedBox(height: 8),
                      TextFormField(
                        controller: controller.nameController,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          hintText: "Abdul Motaleb",
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 14,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                            BorderSide(color: AppColors.blackColorOrginal),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Name cannot be empty";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 10),
                      /// Email
                      Text(AppStrings.email.tr, style: AppFonts.medium16),
                      const SizedBox(height: 8),
                      TextFormField(
                        controller: controller.emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: "example@gmail.com",
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 14,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                            BorderSide(color:AppColors.blackColorOrginal),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Email cannot be empty";
                          }
                          if (!GetUtils.isEmail(value)) {
                            return "Enter a valid email";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 10),
                      /// contact number
                      Text(AppStrings.contactNumber.tr, style: AppFonts.medium16),
                      const SizedBox(height: 8),
                      TextFormField(
                        controller: controller.numberController,
                        decoration: InputDecoration(
                          hintText: "+88012-346-789",
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 14),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                            BorderSide(color: AppColors.blackColorOrginal),
                          ),

                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Number cannot be empty";
                          }
                          if (value.length < 11) {
                            return "Number must be at least 6 characters";
                          }
                          return null;
                        },

                      ),


                    ],
                  ),
                ),
              ),



              SizedBox(height: Dimensions.h(80)),
              AppButton(text: AppStrings.update, onPressed: (){})
            ],
          ),
        )
      ),
    );
  }
}
