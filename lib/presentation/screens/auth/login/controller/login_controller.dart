import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jibjab/core/routes/route_path.dart';

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
    // if (formKey.currentState?.validate() ?? false) {
    //   Get.snackbar(
    //     "Success",
    //     "Logged in successfully!",
    //     snackPosition: SnackPosition.BOTTOM,
    //     backgroundColor: Colors.green.withOpacity(0.8),
    //     colorText: Colors.white,
    //   );
    // }

    Get.toNamed(RoutePath.navigation);

  }

  /// Forgot password action
  void forgotPassword() {
    Get.snackbar(
      "Forgot Password",
      "Redirecting to forgot password screen...",
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.blue.withOpacity(0.8),
      colorText: Colors.white,
    );
  }

  /// Signup action
  void signup() {
    Get.toNamed(RoutePath.signup);
  }

  @override
  void onClose() {
    // Dispose controllers & focus nodes to prevent memory leaks
    emailController.dispose();
    passwordController.dispose();
    emailFocus.dispose();
    passwordFocus.dispose();
    super.onClose();
  }
}
