import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jibjab/core/routes/route_path.dart';
import 'package:jibjab/utils/app_colors/app_colors.dart';

class LoginController extends GetxController {
  /// Text controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  /// Focus nodes
  final emailFocus = FocusNode();
  final passwordFocus = FocusNode();

  /// Rx variable for password visibility
  var isPasswordHidden = true.obs;

  /// Form key for validation
  final formKey = GlobalKey<FormState>();

  /// Toggle password visibility
  void togglePassword() {
    isPasswordHidden.value = !isPasswordHidden.value;
  }

  /// Login action
  void login() {

    Get.toNamed(RoutePath.navigation);
      Get.snackbar(
        "Success",
        "Logged in successfully!",
        snackPosition: SnackPosition.TOP,
        backgroundColor: AppColors.whiteColor.withOpacity(0.8),
        colorText: AppColors.blackColor,

      );

  }

  /// Forgot password action
  void forgotPassword() {
    Get.snackbar(
      "Forgot Password",
      "Redirecting to forgot password screen...",
      snackPosition: SnackPosition.TOP,
      backgroundColor: AppColors.whiteColor.withOpacity(0.8),
      colorText: AppColors.blackColor,
    );
  }

  /// Signup action
  void signup() {
    Get.toNamed(RoutePath.signup);
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    emailFocus.dispose();
    passwordFocus.dispose();
    super.onClose();
  }
}
