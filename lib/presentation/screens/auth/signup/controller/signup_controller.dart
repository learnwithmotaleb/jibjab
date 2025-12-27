import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jibjab/core/routes/route_path.dart';

class SignupController extends GetxController {
  /// Text controllers

  final fullNameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  /// Focus nodes
  final fullNameFocus = FocusNode();
  final emailFocus = FocusNode();
  final phoneFocus = FocusNode();
  final passwordFocus = FocusNode();
  final confirmPasswordFocus = FocusNode();


  /// Form key for validation
  final formKey = GlobalKey<FormState>();


  /// Login action
  void signup() {
    // if (formKey.currentState?.validate() ?? false) {
    //   // TODO: implement API login logic here
    //   Get.snackbar(
    //     "Success",
    //     "Logged in successfully!",
    //     snackPosition: SnackPosition.BOTTOM,
    //     backgroundColor: Colors.green.withOpacity(0.8),
    //     colorText: Colors.white,
    //   );
    // }


    Get.toNamed(RoutePath.verify);
  }



  /// Signup action
  void login() {

    Get.offAllNamed(RoutePath.login);
  }

  @override
  void onClose() {
    // Dispose controllers & focus nodes to prevent memory leaks
    emailController.dispose();
    passwordController.dispose();
    phoneController.dispose();

    emailFocus.dispose();
    phoneFocus.dispose();
    passwordFocus.dispose();
    super.onClose();
  }
}
