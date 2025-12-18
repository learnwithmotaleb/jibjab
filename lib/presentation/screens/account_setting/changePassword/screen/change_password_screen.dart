import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/app_colors/app_colors.dart';
import '../../../../../utils/app_fonts/app_fonts.dart';
import '../../../../../utils/dimensions/dimensions.dart';
import '../../../../../utils/static_strings/static_strings.dart';
import '../../../../widgets/app_button/app_button.dart';
import '../../../details/widget/top_bar.dart';
import '../controller/change_password_controller.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  final controller = Get.put(ChangePasswordController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Dimensions.w(16)),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: Dimensions.h(24)),

                /// Top Bar
                TopBar(title: AppStrings.changePassword.tr),

                SizedBox(height: Dimensions.h(32)),

                /// Form
                Form(
                  key: controller.formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      /// Current Password
                      _title(AppStrings.password.tr),
                      _passwordField(
                        controller: controller.typePasswordController,
                        focusNode: controller.typePasswordFocus,
                        hint: AppStrings.enterYourPassword.tr,
                        isHidden: controller.isCurrentPasswordHidden,
                        onToggle: controller.toggleCurrentPassword,
                        onSubmit: () =>
                            controller.newPasswordFocus.requestFocus(),
                      ),

                      SizedBox(height: Dimensions.h(16)),

                      /// New Password
                      _title(AppStrings.newPassword.tr),
                      _passwordField(
                        controller: controller.newPasswordController,
                        focusNode: controller.newPasswordFocus,
                        hint: AppStrings.enterYourNewPassword.tr,
                        isHidden: controller.isNewPasswordHidden,
                        onToggle: controller.toggleNewPassword,
                        onSubmit: () =>
                            controller.confirmPasswordFocus.requestFocus(),
                      ),

                      SizedBox(height: Dimensions.h(16)),

                      /// Confirm Password
                      _title(AppStrings.confirmPassword.tr),
                      _passwordField(
                        controller: controller.confirmPasswordController,
                        focusNode: controller.confirmPasswordFocus,
                        hint: AppStrings.confirmPassword.tr,
                        isHidden: controller.isConfirmPasswordHidden,
                        onToggle: controller.toggleConfirmPassword,
                        onSubmit: controller.changePassword,
                        isConfirm: true,
                      ),

                      SizedBox(height: Dimensions.h(40)),

                      AppButton(
                        text: AppStrings.update.tr,
                        onPressed: controller.changePassword,
                      ),

                      SizedBox(height: Dimensions.h(24)),
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

  /// Reusable title
  Widget _title(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(text, style: AppFonts.medium16),
    );
  }

  /// Reusable password field (with eye icon)
  Widget _passwordField({
    required TextEditingController controller,
    required FocusNode focusNode,
    required String hint,
    required RxBool isHidden,
    required VoidCallback onToggle,
    required VoidCallback onSubmit,
    bool isConfirm = false,
  }) {
    return Obx(
          () => TextFormField(
        controller: controller,
        focusNode: focusNode,
        obscureText: isHidden.value,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          hintText: hint,
          contentPadding:
          const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: AppColors.primaryColor),
          ),
          suffixIcon: IconButton(
            splashRadius: 20,
            icon: Icon(
              isHidden.value
                  ? CupertinoIcons.eye_slash
                  : CupertinoIcons.eye,
              color: AppColors.primaryColor,
            ),
            onPressed: onToggle,
          ),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "Password cannot be empty";
          }
          if (value.length < 6) {
            return "Password must be at least 6 characters";
          }
          if (isConfirm &&
              value != this.controller.newPasswordController.text) {
            return "Passwords do not match";
          }
          return null;
        },
        onFieldSubmitted: (_) => onSubmit(),
      ),
    );
  }
}
