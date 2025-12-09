import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class VerifyController extends GetxController{

  final otpController = TextEditingController();
  RxBool isLoading = false.obs;
  RxBool isLoadingResend = false.obs;

  emailVerifyProcess() async {
    // return await AuthService.emailVerifyService(
    //   activationCode: otpController.text,
    //   isLoading: isLoading,
    //   email: Get.find<ForgotController>().emailController.text,
    // );
  }

  resendOtpProcess() async {
    // return await AuthService.resendOtpService(
    //   isLoading: isLoadingResend,
    //   email: Get.find<ForgotController>().emailController.text,
    // );
  }

  @override
  void onClose() {
    // Dispose controllers & focus nodes to prevent memory leaks
    otpController.dispose();
    super.onClose();
  }

}