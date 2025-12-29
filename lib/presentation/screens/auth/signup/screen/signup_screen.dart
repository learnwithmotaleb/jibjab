import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jibjab/presentation/screens/auth/signup/controller/signup_controller.dart';
import 'package:jibjab/utils/app_colors/app_colors.dart';
import 'package:jibjab/utils/app_fonts/app_fonts.dart';
import 'package:jibjab/utils/assets_image/app_images.dart';
import 'package:jibjab/utils/static_strings/static_strings.dart';
import '../../../../../utils/dimensions/dimensions.dart';
import '../../../../widgets/app_button/app_button.dart';


class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});

  final controller = Get.put(SignupController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppStrings.signup.tr,
                      style: AppFonts.mediumBold24.copyWith(
                        fontSize: 20,
                        height: 1.2,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      AppStrings.signupSubTitle.tr,
                      style: AppFonts.mediumBold18,
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
              SizedBox(height: 20,),

              /// Form
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Form(
                  key: controller.formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(AppStrings.fullName.tr, style: AppFonts.medium16),
                      const SizedBox(height: 8),
                      TextFormField(
                        controller: controller.fullNameController,
                        focusNode: controller.fullNameFocus,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          hintStyle: AppFonts.regular14.copyWith(
                            color: AppColors.blackColorOrginal.withOpacity(0.5)
                          ),
                          hintText: AppStrings.enterYourName.tr,
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
                            BorderSide(color: AppColors.primaryColor),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Name cannot be empty";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 14),
                      /// Email
                      Text(AppStrings.email.tr, style: AppFonts.medium16),
                      const SizedBox(height: 14),
                      TextFormField(
                        controller: controller.emailController,
                        focusNode: controller.emailFocus,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintStyle: AppFonts.regular14.copyWith(
                              color: AppColors.blackColorOrginal.withOpacity(0.5)
                          ),
                          hintText: AppStrings.enterYourEmail.tr,
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
                            BorderSide(color: AppColors.primaryColor),
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
                      const SizedBox(height: 14),
                      Text(AppStrings.phoneNumber.tr, style: AppFonts.medium16),
                      const SizedBox(height: 14),
                      TextFormField(
                        controller: controller.phoneController,
                        focusNode: controller.phoneFocus,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          hintStyle: AppFonts.regular14.copyWith(
                              color: AppColors.blackColorOrginal.withOpacity(0.5)
                          ),
                          hintText: AppStrings.enterYourPhone.tr,
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
                            BorderSide(color: AppColors.primaryColor),
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
                      const SizedBox(height: 14),
                      /// Password
                      Text(AppStrings.password.tr, style: AppFonts.medium16),
                      const SizedBox(height: 14),
                      TextFormField(
                          controller: controller.passwordController,
                          focusNode: controller.passwordFocus,
                          decoration: InputDecoration(
                            hintStyle: AppFonts.regular14.copyWith(
                                color: AppColors.blackColorOrginal.withOpacity(0.5)
                            ),
                            hintText: AppStrings.enterYourPassword.tr,
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 14),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                              BorderSide(color: AppColors.primaryColor),
                            ),

                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Password cannot be empty";
                            }
                            if (value.length < 6) {
                              return "Password must be at least 6 characters";
                            }
                            return null;
                          },

                      ),

                      const SizedBox(height: 14),
                      /// Confirm Password
                      Text(AppStrings.confirmPassword.tr, style: AppFonts.medium16),
                      const SizedBox(height: 14),
                      TextFormField(
                        controller: controller.confirmPasswordController,
                        focusNode: controller.confirmPasswordFocus,
                        decoration: InputDecoration(
                          hintStyle: AppFonts.regular14.copyWith(
                              color: AppColors.blackColorOrginal.withOpacity(0.5)
                          ),
                          hintText: AppStrings.enterYourPassword.tr,
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 14),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                            BorderSide(color: AppColors.primaryColor),
                          ),

                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Password cannot be empty";
                          }
                          if (value.length < 6) {
                            return "Password must be at least 6 characters";
                          }
                          return null;
                        },

                      ),
                      const SizedBox(height: 40),

                      /// Login Button
                      AppButton(
                        text: AppStrings.signup.tr,
                        onPressed: controller.signup,
                        height: 52,
                        width: double.infinity,
                      ),
                      const SizedBox(height: 40),


                      /// Sign Up Text
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              AppStrings.dontHaveAnAccount.tr,
                              style: AppFonts.regular14,
                            ),
                            TextButton(
                              onPressed: controller.login,
                              child: Text(
                                AppStrings.signIn.tr,
                                style: AppFonts.medium16.copyWith(
                                    color: AppColors.primaryColor),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 24),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}
