import 'package:flutter/cupertino.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
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

  /// Password visibility
  final isCurrentPasswordHidden = true.obs;
  final isNewPasswordHidden = true.obs;
  final isConfirmPasswordHidden = true.obs;

  void toggleCurrentPassword() {
    isCurrentPasswordHidden.toggle();
  }

  void toggleNewPassword() {
    isNewPasswordHidden.toggle();
  }

  void toggleConfirmPassword() {
    isConfirmPasswordHidden.toggle();
  }

  void changePassword() {
    if (!formKey.currentState!.validate()) return;

    FocusManager.instance.primaryFocus?.unfocus();

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
    super.onClose();
  }
}
