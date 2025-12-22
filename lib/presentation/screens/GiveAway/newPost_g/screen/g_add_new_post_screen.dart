import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:jibjab/core/routes/route_path.dart';

import '../../../../../utils/app_colors/app_colors.dart';
import '../../../../../utils/assets_image/app_images.dart';
import '../../../../../utils/dimensions/dimensions.dart';
import '../../../../../utils/static_strings/static_strings.dart';
import '../../../../widgets/app_button/app_button.dart';
import '../../../details/widget/top_bar.dart';

import '../controller/g_add_new_post_controller.dart';

class GAddNewPostScreen extends StatefulWidget {
  const GAddNewPostScreen({super.key});

  @override
  State<GAddNewPostScreen> createState() => _GAddNewPostScreenState();
}

class _GAddNewPostScreenState extends State<GAddNewPostScreen> {
  final controller =
  Get.put(GAddNewPostController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(Dimensions.w(16)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: Dimensions.h(16)),

              /// 🔹 App Bar
              TopBar(title: AppStrings.addNewPost.tr),

              SizedBox(height: Dimensions.h(32)),

              /// 🔹 Main Image Preview
              LayoutBuilder(
                builder: (context, constraints) {
                  return Center(
                    child: AspectRatio(
                      aspectRatio: 356 / 431,
                      child: Obx(() {
                        return Stack(
                          alignment: Alignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: controller.selectedImages.isNotEmpty
                                  ? Image.file(
                                controller.selectedImages.first,
                                width: constraints.maxWidth,
                                fit: BoxFit.cover,
                              )
                                  : Image.asset(
                                AppImages.cameraFocusImage,
                                width: constraints.maxWidth,
                                fit: BoxFit.cover,
                              ),
                            ),

                            /// Overlay only when no image
                            if (controller.selectedImages.isEmpty)
                              Image.asset(
                                AppImages.cameraOverlay,
                                width: constraints.maxWidth * .75,
                              ),
                          ],
                        );
                      }),
                    ),
                  );
                },
              ),

              SizedBox(height: Dimensions.h(24)),

              /// 🔹 Image Thumbnails
              Padding(
                padding:
                EdgeInsets.symmetric(horizontal: Dimensions.w(20)),
                child: Obx(() {
                  return Row(
                    children: List.generate(4, (index) {
                      return Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: Dimensions.w(4)),
                          child: AspectRatio(
                            aspectRatio: 72.38 / 66.42,
                            child: Container(
                              decoration: BoxDecoration(
                                color: AppColors
                                    .grayColorAddNewPostScreen,
                                borderRadius:
                                BorderRadius.circular(5),
                              ),
                              child: index <
                                  controller.selectedImages.length
                                  ? ClipRRect(
                                borderRadius:
                                BorderRadius.circular(5),
                                child: Image.file(
                                  controller
                                      .selectedImages[index],
                                  fit: BoxFit.cover,
                                ),
                              )
                                  : const SizedBox(),
                            ),
                          ),
                        ),
                      );
                    }),
                  );
                }),
              ),

              SizedBox(height: Dimensions.h(28)),

              /// 🔹 Bottom Action Icons
              Padding(
                padding:
                EdgeInsets.symmetric(horizontal: Dimensions.w(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    /// Gallery
                    GestureDetector(
                      onTap: controller.pickFromGallery,
                      child: Icon(
                        Icons.add_photo_alternate_outlined,
                        size: Dimensions.w(28),
                      ),
                    ),

                    /// Middle Capture Button
                    GestureDetector(
                      onTap: controller.captureFromCamera,
                      child: Container(
                        width: Dimensions.w(47),
                        height: Dimensions.w(47),
                        decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),

                    /// Camera
                    GestureDetector(
                      onTap: controller.captureFromCamera,
                      child: Icon(
                        Icons.camera_alt_outlined,
                        size: Dimensions.w(32),
                      ),
                    ),
                  ],
                ),
              ),

              const Spacer(),

              /// 🔹 Continue Button
              AppButton(
                text: AppStrings.continueButton,
                onPressed: () {
                  Get.toNamed(RoutePath.gSelectTimeSlot);
                },
              ),

              SizedBox(height: Dimensions.h(16)),
            ],
          ),
        ),
      ),
    );
  }
}
