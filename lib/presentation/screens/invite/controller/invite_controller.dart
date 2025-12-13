import 'package:flutter/services.dart';
import 'package:get/get.dart';

class InviteController extends GetxController {
  // Invite link (you can also pass this from API later)
  final String inviteLink = "https://jibjab.app/invite";

  /// Copy invite link to clipboard
  void copyInviteLink() {
    Clipboard.setData(ClipboardData(text: inviteLink));

    Get.snackbar(
      "Copied",
      "Invite link copied to clipboard",
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 2),
    );
  }
}
