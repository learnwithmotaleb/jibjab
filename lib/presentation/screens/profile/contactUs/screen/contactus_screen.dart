import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

import '../../../../../utils/app_colors/app_colors.dart';
import '../../../../../utils/app_fonts/app_fonts.dart';
import '../../../../../utils/dimensions/dimensions.dart';
import '../../../../../utils/static_strings/static_strings.dart';
import '../../../../widgets/app_button/app_button.dart';
import '../../../details/widget/top_bar.dart';
import '../controller/contactus_controller.dart';

class ContactusScreen extends StatelessWidget {
  ContactusScreen({super.key});

  final controller = Get.put(ContactusController());

  InputDecoration _inputDecoration(String hint) {
    return InputDecoration(
      hintText: hint,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
        borderSide: BorderSide(color: AppColors.primaryColor),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
        borderSide: BorderSide(color: AppColors.primaryColor),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
        borderSide: BorderSide(color: AppColors.primaryColor, width: 1.5),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: Dimensions.w(16),
            vertical: Dimensions.h(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: Dimensions.h(10)),
              TopBar(title: AppStrings.contactUs.tr),

              SizedBox(height: Dimensions.h(32)),

              /// Greeting section
              Text(
                AppStrings.hello,
                style: AppFonts.medium16.copyWith(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: Dimensions.h(12)),
              Text(
                AppStrings.howCanWeHelp,
                style: AppFonts.regular16,
              ),
              SizedBox(height: Dimensions.h(8)),
              Text(
                AppStrings.supportEmail,
                style: AppFonts.regular16,
              ),

              SizedBox(height: Dimensions.h(32)),

              /// Message title
              Text(
                AppStrings.messageUs,
                style: AppFonts.medium16.copyWith(fontWeight: FontWeight.bold),
              ),

              SizedBox(height: Dimensions.h(24)),

              /// Email
              Text(AppStrings.email.tr, style: AppFonts.medium16),
              SizedBox(height: Dimensions.h(8)),
              TextFormField(
                controller: controller.emailController,
                keyboardType: TextInputType.emailAddress,
                decoration:
                _inputDecoration(AppStrings.enterYourEmailHere),
              ),

              SizedBox(height: Dimensions.h(20)),

              /// Phone
              Text(AppStrings.phoneNumber.tr, style: AppFonts.medium16),
              SizedBox(height: Dimensions.h(8)),
              TextFormField(
                controller: controller.numberController,
                keyboardType: TextInputType.phone,
                decoration: _inputDecoration(
                    AppStrings.enterYourPhoneNumberHere),
              ),

              SizedBox(height: Dimensions.h(20)),

              /// Description
              Text(
                AppStrings.descriptionOfTheIssue.tr,
                style: AppFonts.medium16,
              ),
              SizedBox(height: Dimensions.h(8)),
              TextFormField(
                controller: controller.descriptionController,
                maxLines: 5,
                decoration:
                _inputDecoration(AppStrings.enterYourDescriptionHere),
              ),

              SizedBox(height: Dimensions.h(40)),

              /// Submit button
              AppButton(
                text: AppStrings.submit,
                borderRadius: 4,
                onPressed: () {
                  // controller.submitContact();
                },
              ),

              SizedBox(height: Dimensions.h(20)),
            ],
          ),
        ),
      ),
    );
  }
}
