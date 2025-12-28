import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jibjab/utils/app_colors/app_colors.dart';
import 'package:jibjab/utils/app_fonts/app_fonts.dart';
import 'package:jibjab/utils/dimensions/dimensions.dart';
import 'package:jibjab/utils/static_strings/static_strings.dart';
import '../../../../widgets/app_button/app_button.dart';
import '../controller/reset_controller.dart';

class ResetScreen extends StatefulWidget {
  const ResetScreen({Key? key}) : super(key: key);

  @override
  State<ResetScreen> createState() => _ResetScreenState();
}

class _ResetScreenState extends State<ResetScreen> {
  final ResetController controller = Get.put(ResetController());

  @override
  void dispose() {
    controller.newPasswordFocus.dispose();
    controller.confirmPasswordFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: Dimensions.w(16)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: Dimensions.h(20)),

                // Back & Title
                Row(
                  children: [
                    IconButton(
                      onPressed: () => Get.back(),
                      icon: Icon(
                        Icons.arrow_back_ios_new,
                        size: Dimensions.w(22),
                        color: AppColors.primaryColor,
                      ),
                    ),
                    SizedBox(width: Dimensions.w(80)),
                    Text(
                      AppStrings.resetPassword.tr,
                      style: AppFonts.medium20.copyWith(fontSize: Dimensions.f(20)),
                    ),
                  ],
                ),
                SizedBox(height: Dimensions.h(60)),

                // Form
                Form(
                  key: controller.formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // New Password
                      Text(AppStrings.newPassword.tr, style: AppFonts.medium16),
                      SizedBox(height: Dimensions.h(8)),
                      Obx(
                            () => TextFormField(
                          controller: controller.newPasswordController,
                          focusNode: controller.newPasswordFocus,
                          textInputAction: TextInputAction.next,
                          obscureText: controller.isNewPasswordHidden.value,
                          decoration: InputDecoration(
                            hintText: AppStrings.enterNewPassword.tr,
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: Dimensions.w(16), vertical: Dimensions.h(14)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(Dimensions.r(10))),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(Dimensions.r(10)),
                              borderSide: BorderSide(color: AppColors.primaryColor),
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(
                                controller.isNewPasswordHidden.value
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: AppColors.primaryColor,
                              ),
                              onPressed: controller.toggleNewPassword,
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
                          onFieldSubmitted: (_) {
                            FocusScope.of(context)
                                .requestFocus(controller.confirmPasswordFocus);
                          },
                        ),
                      ),
                      SizedBox(height: Dimensions.h(20)),

                      // Confirm Password
                      Text(AppStrings.confirmPassword.tr, style: AppFonts.medium16),
                      SizedBox(height: Dimensions.h(8)),
                    TextFormField(
                          controller: controller.confirmPasswordController,
                          focusNode: controller.confirmPasswordFocus,
                          textInputAction: TextInputAction.done,
                          obscureText: controller.isConfirmPasswordHidden.value,
                          decoration: InputDecoration(
                            hintText: AppStrings.confirmNewPassword.tr,
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: Dimensions.w(16), vertical: Dimensions.h(14)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(Dimensions.r(10))),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(Dimensions.r(10)),
                              borderSide: BorderSide(color: AppColors.primaryColor),
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(
                                controller.isConfirmPasswordHidden.value
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: AppColors.primaryColor,
                              ),
                              onPressed: controller.toggleConfirmPassword,
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Password cannot be empty";
                            }
                            if (value != controller.newPasswordController.text) {
                              return "Passwords do not match";
                            }
                            return null;
                          },
                          onFieldSubmitted: (_) {
                            controller.resetPassword();
                          },

                      ),
                      SizedBox(height: Dimensions.h(80)),

                      // Reset Button
                      AppButton(
                        text: AppStrings.resetPassword.tr,
                        onPressed: controller.resetPassword,
                        height: Dimensions.h(52),
                        width: double.infinity,
                      ),
                      SizedBox(height: Dimensions.h(20)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



