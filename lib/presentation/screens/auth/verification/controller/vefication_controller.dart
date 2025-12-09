import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class VerificationController extends GetxController {

  /// OTP TextController and FocusNode
  final otpController = TextEditingController();
  final otpFocus = FocusNode();

  /// Loading state
  RxBool isLoading = false.obs;
  RxBool isLoadingResend = false.obs;

  /// Verify OTP
  Future<void> verifyOtp() async {
    final otp = otpController.text.trim();
    if (otp.length != 6) {
      Get.snackbar("Error", "Please enter a valid 6-digit OTP");
      return;
    }

    try {
      isLoading.value = true;

      // TODO: Call your OTP verification API here
      await Future.delayed(const Duration(seconds: 2));

      Get.snackbar("Success", "OTP verified successfully");
      // Optionally navigate to the next screen
      // Get.toNamed(RoutePath.reset);

    } catch (e) {
      Get.snackbar("Error", "Failed to verify OTP");
    } finally {
      isLoading.value = false;
    }
  }

  /// Resend OTP
  Future<void> resendOtpProcess() async {
    try {
      isLoadingResend.value = true;

      // TODO: Call your resend OTP API here
      await Future.delayed(const Duration(seconds: 2));

      Get.snackbar("Success", "OTP has been resent");

    } catch (e) {
      Get.snackbar("Error", "Failed to resend OTP");
    } finally {
      isLoadingResend.value = false;
    }
  }

  // @override
  // void onClose() {
  //   otpController.dispose();
  //   otpFocus.dispose();
  //   super.onClose();
  // }
}
