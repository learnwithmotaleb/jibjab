import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:jibjab/core/routes/route_path.dart';
import 'package:jibjab/presentation/widgets/app_button/app_button.dart';
import 'package:jibjab/utils/app_colors/app_colors.dart';
import 'package:jibjab/utils/assets_image/app_images.dart';

class ConfirmDialog extends StatelessWidget {
  final String title;
  final String message;
  final VoidCallback onConfirm;

  const ConfirmDialog({
    super.key,
    required this.title,
    required this.message,
    required this.onConfirm,
  });

  @override
  Widget build(BuildContext context) {

    return AlertDialog(
      backgroundColor: AppColors.whiteColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(1),
      ),

      // TITLE
      title: Text(
        title,
      ),


      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
           AppImages.mapPicture,
            height: 200,
            fit: BoxFit.cover,
          ),
          Text(
            message
          ),
        ],
      ),

      // BUTTONS
      actionsAlignment: MainAxisAlignment.spaceEvenly,
      actions: [
        AppButton(text: "Cancel", borderRadius: 5, onPressed: (){
          Get.back();
        },width: 130, height: 40,),
        AppButton(text: "Confirm", borderRadius: 5, onPressed: (){
         Get.toNamed(RoutePath.shoppingList);
        },width: 130, height: 40,),
      ],
    );
  }
}
