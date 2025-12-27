import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../widgets/image_picker/image_picker_controller.dart';
import 'image_bottom_sheet.dart';


class ImagePickerWidget extends StatelessWidget {
  ImagePickerWidget({super.key});

  final ImagePickerController controller =
  Get.put(ImagePickerController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return GestureDetector(
        onTap: () {
          ImagePickerBottomSheet.show(controller);
        },
        child: Container(
          height: 140,
          width: 140,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey.shade200,
            image: controller.image.value != null
                ? DecorationImage(
              image: FileImage(controller.image.value!),
              fit: BoxFit.cover,
            )
                : null,
          ),
          child: controller.image.value == null
              ? const Icon(Icons.add_a_photo, size: 40, color: Colors.grey)
              : null,
        ),
      );
    });
  }
}
