import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:jibjab/utils/dimensions/dimensions.dart';
import '../../../../utils/app_colors/app_colors.dart';
import '../../../widgets/image_picker/image_picker_controller.dart';


class ImagePickerBottomSheet {
  static void show(ImagePickerController controller) {
    Get.bottomSheet(
      Container(
        height: Dimensions.h(300),
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Add Photo',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),

            ListTile(
              leading: const Icon(Icons.camera_alt, color: AppColors.primaryColor),
              title: const Text('Camera'),
              onTap: () => controller.pick(ImageSource.camera),
            ),

            ListTile(
              leading: const Icon(Icons.photo_library, color: AppColors.primaryColor),
              title: const Text('Gallery'),
              onTap: () => controller.pick(ImageSource.gallery),
            ),
          ],
        ),
      ),
    );
  }
}
