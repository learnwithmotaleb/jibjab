import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:jibjab/core/routes/route_path.dart';

class ResetController extends GetxController {
  /// Text controllers
  final newPasswordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  /// Focus nodes
  final newPasswordFocus = FocusNode();
  final confirmPasswordFocus = FocusNode();

  /// Rx variables for password visibility
  var isNewPasswordHidden = true.obs;
  var isConfirmPasswordHidden = true.obs;

  /// Form key for validation
  final formKey = GlobalKey<FormState>();

  /// Toggle password visibility
  void toggleNewPassword() {
    isNewPasswordHidden.value = !isNewPasswordHidden.value;
  }

  void toggleConfirmPassword() {
    isConfirmPasswordHidden.value = !isConfirmPasswordHidden.value;
  }

  /// Reset Password logic
  void resetPassword() {
    // Close keyboard
    newPasswordFocus.unfocus();
    confirmPasswordFocus.unfocus();

    // if (formKey.currentState!.validate()) {
    //
    //   String newPassword = newPasswordController.text.trim();
    //   String confirmPassword = confirmPasswordController.text.trim();
    //
    //   print("Reset Password called with: $newPassword / $confirmPassword");
    //
    // }

    Get.offAllNamed(RoutePath.login);
  }

  @override
  void onClose() {
    newPasswordController.dispose();
    confirmPasswordController.dispose();
    newPasswordFocus.dispose();
    confirmPasswordFocus.dispose();
    super.onClose();
  }
}
