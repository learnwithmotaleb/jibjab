import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:jibjab/presentation/screens/myPost/widget/rating_popup_widget.dart';
import 'package:jibjab/presentation/widgets/customAlertDialog/custome_alert_dialog.dart';

import '../../../../core/routes/route_path.dart';
import '../../../../utils/app_colors/app_colors.dart';
import '../../../../utils/app_fonts/app_fonts.dart';
import '../../../widgets/image_picker/image_picker_controller.dart';
import 'image_bottom_sheet.dart';

class PostCard extends StatelessWidget {
  final Map<String, dynamic> data;

   PostCard({super.key, required this.data});

  final ImagePickerController controllerImage =
  Get.put(ImagePickerController());


  @override
  Widget build(BuildContext context) {
    final bool isCompleted = data["status"] == "Completed";

    return InkWell(
      onTap: () {
        if (data["status"] != "Completed") {
          Get.toNamed(RoutePath.details);
        }
      },
      child: Stack(
        children: [
          Card(
            color: AppColors.whiteColor,
            elevation: 1,
            margin: EdgeInsets.symmetric(vertical: 5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(2),
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(2),
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Image.asset(
                      data["image"],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _row("Title", data["title"]),
                      _row("Price", data["price"]),
                      _row("Priority", data["priority"]),
                      _row("Size", data["size"]),

                      if (isCompleted)
                        Row(
                          children: [
                            _completedBtn("Add Photo", true),
                            const SizedBox(width: 8),
                            _reviewBtn("Add Review", false),
                          ],
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          if (!isCompleted)
            Positioned(
              top: 7,
              right: 2,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                decoration: BoxDecoration(
                  color: _statusColor(data["status"]),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  data["status"],
                  style: AppFonts.regular12.copyWith(color: AppColors.whiteColor),
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _row(String label, String value) {
    return Row(
      children: [
        Text("$label: ",
            style: AppFonts.medium16.copyWith(color: AppColors.primaryColor)),
        Text(value, style: AppFonts.regular12.copyWith(
          color: AppColors.blackColor.withOpacity(0.5)
        )),
      ],
    );
  }

  Widget _completedBtn(String text, bool filled) {
    return GestureDetector(
      onTap: (){

        ImagePickerBottomSheet.show(controllerImage);

      },
      child: Container(
        width: 65,
        height: 22,
        decoration: BoxDecoration(
          color: filled ? AppColors.completedBackground : AppColors.whiteColor,
          border: filled ? null : Border.all(color: AppColors.primaryColor),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
          child: Text(
            text,
            style: AppFonts.regular12.copyWith(
              fontSize: 9,
              color: filled ? AppColors.whiteColor : AppColors.primaryColor,
            ),
          ),
        ),
      ),
    );
  }

  Widget _reviewBtn(String text, bool filled) {
    return GestureDetector(
      onTap: (){

        Get.dialog(
            RatingPopup());


      },
      child: Container(
        width: 65,
        height: 22,
        decoration: BoxDecoration(
          color: filled ? AppColors.completedBackground : AppColors.whiteColor,
          border: filled ? null : Border.all(color: AppColors.primaryColor),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
          child: Text(
            text,
            style: AppFonts.regular12.copyWith(
              fontSize: 9,
              color: filled ? AppColors.whiteColor : AppColors.primaryColor,
            ),
          ),
        ),
      ),
    );
  }

  Color _statusColor(String status) {
    switch (status) {
      case "Pending":
        return AppColors.pendingBackground;
      case "Active":
        return AppColors.activeBackground;
      case "Completed":
        return AppColors.completedBackground;
      default:
        return AppColors.primaryColor;
    }
  }
}
