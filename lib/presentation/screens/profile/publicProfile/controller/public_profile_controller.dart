import 'dart:io';

import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:image_picker/image_picker.dart';

class PublicProfileController extends GetxController{


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
  void savePublicProfile() {


    // TODO: API call
  }


}