import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class EditProfileController extends GetxController {
  /// Text Controllers
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final numberController = TextEditingController();

  /// Form key
  final formKey = GlobalKey<FormState>();

  /// Picked Image
  final Rx<File?> pickedImage = Rx<File?>(null);

  final ImagePicker _picker = ImagePicker();

  Future<void> pickImage() async {
    final XFile? image = await _picker.pickImage(
      source: ImageSource.gallery,

      imageQuality: 80,
    );
    if (image != null) pickedImage.value = File(image.path);
  }

  /// Update profile
  void updateProfile() {
    if (!formKey.currentState!.validate()) return;

    // TODO: API call
  }

  @override
  void onClose() {
    nameController.dispose();
    emailController.dispose();
    numberController.dispose();
    super.onClose();
  }
}
