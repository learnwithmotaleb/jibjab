import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

import '../../../../../core/routes/route_path.dart';
import '../../../../../utils/app_colors/app_colors.dart';
import '../../../../../utils/app_fonts/app_fonts.dart';
import '../../../../../utils/assets_image/app_images.dart';
import '../../../../../utils/dimensions/dimensions.dart';
import '../../../../../utils/static_strings/static_strings.dart';
import '../../../../widgets/app_button/app_button.dart';
import '../../../AddNewOrder/details_order/widget/info_row_order_details.dart';
import '../../../details/widget/horizontal_image_selector.dart';
import '../../../details/widget/info_alert_box.dart';
import '../../../details/widget/info_row.dart';
import '../../../details/widget/top_bar.dart';

class BDetailsOrderScreen extends StatefulWidget {
  const BDetailsOrderScreen({super.key});

  @override
  State<BDetailsOrderScreen> createState() => _BDetailsOrderScreenState();
}

class _BDetailsOrderScreenState extends State<BDetailsOrderScreen> {
  final sizeList = [
    {"label": "S", "image": AppImages.detailsImage},
    {"label": "M", "image": AppImages.detailsImage},
    {"label": "L", "image": AppImages.detailsImage},
    {"label": "XL", "image": AppImages.detailsImage},
  ];

  bool isSelect = false;

  Widget infoPriceRow(String label, String value) {
    return Padding(
      padding: EdgeInsets.only(bottom: Dimensions.h(6)),
      child: Row(
        children: [
          Text(
            "$label: ",
            style: AppFonts.medium16.copyWith(
              color: AppColors.primaryColor,
            ),
          ),
          Text(
            value,
            style: AppFonts.medium16.copyWith(
              color: AppColors.blackColor,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: Dimensions.w(14),
            vertical: Dimensions.h(14),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              /// 🔹 Top Bar
              TopBar(title: AppStrings.detailsPage.tr),

              SizedBox(height: Dimensions.h(16)),

              /// 🔹 Main Image
              ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.asset(
                  AppImages.cameraFocusImage,
                  width: double.infinity,
                  height: Dimensions.h(220),
                  fit: BoxFit.cover,
                ),
              ),

              SizedBox(height: Dimensions.h(16)),

              /// 🔹 Title
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${AppStrings.title.tr}: ",
                    style: AppFonts.medium16.copyWith(
                      color: AppColors.primaryColor,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "Remove 20 paint tine",
                      style: AppFonts.medium16.copyWith(
                        color: AppColors.blackColor,
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: Dimensions.h(10)),

              /// 🔹 Description
              Text(
                "${AppStrings.description.tr}:",
                style: AppFonts.medium16.copyWith(
                  color: AppColors.primaryColor,
                ),
              ),

              SizedBox(height: Dimensions.h(4)),

              Text(
                "Jibjab is your all-in-one delivery whether you need to move items.",
                style: AppFonts.regular14.copyWith(
                  color: AppColors.blackColor,
                  height: 1.4,
                ),
              ),

              SizedBox(height: Dimensions.h(20)),

              /// 🔹 Payment Info
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Payment"),
                  Text("30"),


                ],
              ),
              SizedBox(height: Dimensions.h(10)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Text("Total"),
                  Text("30"),


                ],
              ),


              SizedBox(height: Dimensions.h(20)),

              /// 🔹 Size Selector
              Padding(
                  padding: EdgeInsetsGeometry.symmetric(horizontal: 16),
                  child: HorizontalImageSelector(sizeList: sizeList)),

              SizedBox(height: Dimensions.h(20)),

              /// 🔹 Alert Box
              InfoAlertBox(text: AppStrings.advertiserWillNotBeAb.tr),

              SizedBox(height: Dimensions.h(16)),

              /// 🔹 Info Rows
              InfoRow(
                label: AppStrings.orderPriority.tr,
                value: AppStrings.pickupNow.tr,
              ),

              InfoRow(
                label: AppStrings.deliveryAddress.tr,
                value: AppStrings.deliveryAddressBody.tr,
              ),

              SizedBox(height: Dimensions.h(16)),

              /// 🔹 Map Image
              ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.asset(
                  AppImages.mapPicture,
                  width: double.infinity,
                  height: Dimensions.h(180),
                  fit: BoxFit.cover,
                ),
              ),

              SizedBox(height: Dimensions.h(12)),

              InfoRowOrderDetails(
                label: AppStrings.pickupAddress.tr,
                value: AppStrings.pickupAddressBody.tr,
              ),

              SizedBox(height: Dimensions.h(16)),

              /// 🔹 Checkbox Section
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Checkbox(
                    value: isSelect,
                    checkColor: AppColors.whiteColor,
                    activeColor: AppColors.primaryColor,
                    onChanged: (value) {
                      setState(() {
                        isSelect = value!;
                      });
                    },
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "I hereby acknowledge that what is being picked up ",
                          style: AppFonts.regular14,
                          softWrap: true,
                        ),
                        SizedBox(height: Dimensions.h(16)),

                        Text(
                          "corresponds with the picture (s) and ",
                          style: AppFonts.regular14,
                          softWrap: true,
                        ),
                        SizedBox(height: Dimensions.h(16)),
                        Text(
                          "description in the post",
                          style: AppFonts.regular14,
                          softWrap: true,
                        ),
                        SizedBox(height: Dimensions.h(16)),
                        Text(
                          "Does not contain anything toxic or harmful",
                          style: AppFonts.regular14,
                          softWrap: true,
                        ),
                        SizedBox(height: Dimensions.h(16)),
                        Text(
                          "will be available at the time for pick up",
                          style: AppFonts.regular14,
                          softWrap: true,
                        ),
                      ],
                    ),
                  ),
                ],
              ),


              SizedBox(height: Dimensions.h(60)),

              /// 🔹 Action Button
              AppButton(
                text: AppStrings.publishPost,
                onPressed: () {
                  Get.toNamed(RoutePath.bWallet);
                },
              ),

              SizedBox(height: Dimensions.h(80)),
            ],
          ),
        ),
      ),
    );
  }
}
