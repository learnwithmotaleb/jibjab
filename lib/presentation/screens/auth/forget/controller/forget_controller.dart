import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:jibjab/core/routes/route_path.dart';

class ForgetController extends GetxController {
  final emailController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void sendCode() {
    // if (formKey.currentState?.validate() ?? false) {
    //   String email = emailController.text.trim();
    //   // You can call your API here
    //
    //   // Navigate to verification
    //
    // }
    Get.toNamed(RoutePath.verification);
  }

  @override
  void onClose() {
    emailController.dispose();
    super.onClose();
  }
}
