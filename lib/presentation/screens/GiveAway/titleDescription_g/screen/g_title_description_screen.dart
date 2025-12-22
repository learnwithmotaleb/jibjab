import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:jibjab/core/routes/route_path.dart';

import '../../../../../utils/app_colors/app_colors.dart';
import '../../../../../utils/app_fonts/app_fonts.dart';
import '../../../../../utils/assets_image/app_images.dart';
import '../../../../../utils/dimensions/dimensions.dart';
import '../../../../../utils/static_strings/static_strings.dart';
import '../../../../widgets/app_button/app_button.dart';
import '../../../../widgets/app_button/app_text_button.dart';
import '../../../details/widget/horizontal_image_selector.dart';
import '../../../details/widget/top_bar.dart';
import '../controller/g_title_description_controller.dart';

class GTitleDescriptionScreen extends StatefulWidget {
  const GTitleDescriptionScreen({super.key});

  @override
  State<GTitleDescriptionScreen> createState() =>
      _GTitleDescriptionScreenState();
}

class _GTitleDescriptionScreenState extends State<GTitleDescriptionScreen> {
  final controller = Get.find<GTitleDescriptionController>();

  final sizeList = [
    {"label": "S", "image": AppImages.detailsImage},
    {"label": "M", "image": AppImages.detailsImage},
    {"label": "L", "image": AppImages.detailsImage},
    {"label": "XL", "image": AppImages.detailsImage},
  ];

  OutlineInputBorder _border() => OutlineInputBorder(
    borderRadius: BorderRadius.circular(Dimensions.r(8)),
    borderSide: BorderSide(color: AppColors.primaryColor),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: Dimensions.pMedium,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: Dimensions.h(16)),

              /// 🔹 Top Bar
              TopBar(title: AppStrings.titleAndDescription.tr),

              SizedBox(height: Dimensions.h(24)),

              /// 🔹 TITLE
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppStrings.whatDoYouNeedHelpWith.tr,
                    style: AppFonts.regular12.copyWith(
                      fontWeight: FontWeight.w500,
                      fontSize: Dimensions.f(14),
                    ),
                  ),
                  Obx(
                        () => Text(
                      "${controller.titleCount.value}/${controller.titleMax}",
                      style: TextStyle(
                        fontSize: Dimensions.f(12),
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: Dimensions.h(8)),

              TextFormField(
                controller: controller.titleController,
                maxLength: controller.titleMax,
                decoration: InputDecoration(
                  hintText: AppStrings.enterTitle,
                  counterText: "",
                  border: _border(),
                  enabledBorder: _border(),
                  focusedBorder: _border(),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: Dimensions.w(12),
                    vertical: Dimensions.h(12),
                  ),
                ),
              ),

              SizedBox(height: Dimensions.h(20)),

              /// 🔹 DESCRIPTION
              Text(
                AppStrings.description.tr,
                style: AppFonts.regular12.copyWith(
                  fontWeight: FontWeight.w500,
                  fontSize: Dimensions.f(14),
                ),
              ),

              SizedBox(height: Dimensions.h(4)),

              // Obx(
              //       () => Align(
              //     alignment: Alignment.centerRight,
              //     child: Text(
              //       "${controller.descriptionCount.value}/${controller.descriptionMax}",
              //       style: TextStyle(
              //         fontSize: Dimensions.f(12),
              //         color: Colors.grey,
              //       ),
              //     ),
              //   ),
              // ),

              SizedBox(height: Dimensions.h(8)),

              TextFormField(
                controller: controller.descriptionController,
                maxLength: controller.descriptionMax,
                maxLines: 4,
                decoration: InputDecoration(
                  hintText: AppStrings.enterDescription.tr,
                  counterText: "",
                  border: _border(),
                  enabledBorder: _border(),
                  focusedBorder: _border(),
                  contentPadding: EdgeInsets.all(Dimensions.w(12)),
                ),
              ),

              SizedBox(height: Dimensions.h(28)),

              /// 🔹 COLLECTION SIZE
              Text(
                AppStrings.howBigIsTheCollection.tr,
                style: AppFonts.regular20.copyWith(
                  fontSize: Dimensions.f(18),
                ),
              ),

              SizedBox(height: Dimensions.h(16)),

              Padding(
                padding:
                EdgeInsets.symmetric(horizontal: Dimensions.w(12)),
                child: HorizontalImageSelector(sizeList: sizeList),
              ),

              SizedBox(height: Dimensions.h(16)),

              Text(
                AppStrings.itsQuickSmall.tr,
                style: AppFonts.regular12.copyWith(
                  fontSize: Dimensions.f(12),
                  fontWeight: FontWeight.w400,
                ),
              ),

              SizedBox(height: Dimensions.h(20)),

              /// 🔹 INFO ROW
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    AppImages.recommendImage,
                    width: Dimensions.w(40),
                  ),
                  SizedBox(width: Dimensions.w(16)),
                  Expanded(
                    child: Text(
                      AppStrings.thereAreAFewThings.tr,
                      style: AppFonts.regular12.copyWith(
                        fontSize: Dimensions.f(12),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: Dimensions.h(32)),
              const Divider(),
              SizedBox(height: Dimensions.h(24)),

              Center(
                child: AppTextButton(
                  label: AppStrings.learnMore.tr,
                  onPressed: () {
                    Get.toNamed(RoutePath.recommendScreen);
                  },
                  textColor: AppColors.primaryColor,
                ),
              ),

              SizedBox(height: Dimensions.h(32)),

              /// 🔹 PRIMARY CTA
              AppButton(
                text: AppStrings.continueButton.tr,
                onPressed: () {
                  Get.toNamed(RoutePath.gWillPay);
                },
              ),

              SizedBox(height: Dimensions.h(24)),
            ],
          ),
        ),
      ),
    );
  }
}
