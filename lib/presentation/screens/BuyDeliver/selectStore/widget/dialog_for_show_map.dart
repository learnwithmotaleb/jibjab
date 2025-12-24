import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:jibjab/core/routes/route_path.dart';
import 'package:jibjab/presentation/widgets/app_button/app_button.dart';
import 'package:jibjab/utils/app_colors/app_colors.dart';
import 'package:jibjab/utils/app_fonts/app_fonts.dart';
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
        title,style: AppFonts.regular12,
      ),


      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
           AppImages.mapPicture,
            height: 200,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                message,style: AppFonts.regular12,
              ),
            ),
          ),
        ],
      ),

      // BUTTONS
      actionsAlignment: MainAxisAlignment.spaceEvenly,
      actions: [
        GestureDetector(
          onTap: (){
            Get.back();
          },
          child: Container(
            width: 100, height: 30,
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(5)

            ) ,
            child:Center(child: Text("Cancel",style: AppFonts.regular14.copyWith(
              color: AppColors.whiteColor
            ),),)
          ),
        ),
        GestureDetector(
          onTap: (){
            Get.back();
            Get.toNamed(RoutePath.shoppingList);
          },
          child: Container(
            width: 100, height: 30,
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(5)

            ) ,
            child:Center(child: Text("Confirm",style: AppFonts.regular14.copyWith(
              color: AppColors.whiteColor
            ),),)
          ),
        ),
      ],
    );
  }
}
