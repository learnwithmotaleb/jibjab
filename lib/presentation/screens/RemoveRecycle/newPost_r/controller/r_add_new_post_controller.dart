import 'dart:io';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class RAddNewPostController extends GetxController {
  final ImagePicker _picker = ImagePicker();

  /// Selected images list
  RxList<File> selectedImages = <File>[].obs;

  /// Capture image from camera (Middle Button)
  Future<void> captureFromCamera() async {
    final XFile? image = await _picker.pickImage(
      source: ImageSource.camera,
      imageQuality: 80,
    );

    if (image != null) {
      selectedImages.add(File(image.path));
    }
  }

  /// Pick image from gallery
  Future<void> pickFromGallery() async {
    final XFile? image = await _picker.pickImage(
      source: ImageSource.gallery,
      imageQuality: 80,
    );

    if (image != null) {
      selectedImages.add(File(image.path));
    }
  }

  /// Remove image
  void removeImage(int index) {
    selectedImages.removeAt(index);
  }

  /// Clear all images
  void clearImages() {
    selectedImages.clear();
  }
}
