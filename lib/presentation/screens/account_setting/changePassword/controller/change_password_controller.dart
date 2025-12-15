import 'package:flutter/cupertino.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class ChangePasswordController extends GetxController {
  final typePasswordController = TextEditingController();
  final newPasswordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  /// Focus nodes
  final typePasswordFocus = FocusNode();
  final newPasswordFocus = FocusNode();
  final confirmPasswordFocus = FocusNode();

  /// Form key
  final formKey = GlobalKey<FormState>();

  /// Change password action
  void changePassword() {
    if (!formKey.currentState!.validate()) return;

    FocusManager.instance.primaryFocus?.unfocus();

    final currentPassword = typePasswordController.text.trim();
    final newPassword = newPasswordController.text.trim();

    /// TODO: API call here
    /// Example:
    /// authRepository.changePassword(currentPassword, newPassword);

    Get.snackbar(
      "Success",
      "Password changed successfully",
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  @override
  void onClose() {
    typePasswordController.dispose();
    newPasswordController.dispose();
    confirmPasswordController.dispose();
    typePasswordFocus.dispose();
    newPasswordFocus.dispose();
    confirmPasswordFocus.dispose();

  }
}
