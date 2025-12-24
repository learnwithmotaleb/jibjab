import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:jibjab/core/routes/route_path.dart';
import 'package:jibjab/utils/app_colors/app_colors.dart';
import 'package:jibjab/utils/app_fonts/app_fonts.dart';
import 'package:jibjab/utils/assets_image/app_images.dart';

import '../../../../utils/dimensions/dimensions.dart';
import '../../../../utils/static_strings/static_strings.dart';
import '../../details/widget/top_bar.dart';
import '../../postSetting/widget/chip_widget.dart';
import '../../postSetting/widget/circle_icon_widget.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({super.key});

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  final List<Map<String, String>> items = List.generate(
    20,
    (index) => {
      'title': 'Gaming Chair',
      'price': '\$10',
      'status': index % 3 == 0 ? 'COMPLETED' : 'HELP\'S ON THE WAY',
      'image': AppImages.detailsImage, // replace with your asset
    },
  );

  final List<String> iconItems = [
    AppImages.homeItem1,
    AppImages.homeItem2,
    AppImages.homeItem3,
    AppImages.homeItem4,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TopBar(title: AppStrings.post.tr),
              SizedBox(height: 30),


              Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimensions.w(8)), // row padding
                child: Row(
                  children: [

                    /// 1–4 : Icon widgets
                    ...List.generate(
                      iconItems.length,
                          (index) => Padding(
                        padding: EdgeInsets.only(right: Dimensions.w(6)),
                        child: CircleIconWidget(
                          image: iconItems[index],
                          size: Dimensions.w(48), // responsive icon box
                        ),
                      ),
                    ),

                    /// 5 : Distance chip
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.only(right: Dimensions.w(6)),
                        child: TextChipWidget(
                          text: AppStrings.distance.tr,
                          height: Dimensions.h(30), // responsive chip height
                        ),
                      ),
                    ),

                    /// 6 : Sort chip
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.only(right: Dimensions.w(6)),
                        child: TextChipWidget(
                          text: AppStrings.sortedBy.tr,
                          height: Dimensions.h(30), // responsive chip height
                        ),
                      ),
                    ),

                    /// 7 : Clickable icon
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(RoutePath.postSetting);
                      },
                      child: Container(
                        height: Dimensions.w(48), // responsive square
                        width: Dimensions.w(48),
                        decoration: BoxDecoration(
                          color: AppColors.whiteColor,
                          borderRadius: BorderRadius.circular(Dimensions.r(14)),
                        ),
                        padding: EdgeInsets.all(Dimensions.w(8)),
                        child: Image.asset(
                          AppImages.homeItem7,
                          width: Dimensions.w(16),
                          height: Dimensions.h(16),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ],
                ),
              ),



              //===================================================
              SizedBox(height: 20),
              Expanded(
                child: GridView.builder(
                  padding: EdgeInsets.all(8),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                    childAspectRatio: 0.75,
                  ),
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    final item = items[index];
                    return Stack(
                      children: [
                        GestureDetector(
                          onTap:(){
                            Get.toNamed(RoutePath.details);
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Image.asset(
                                  item['image']!,
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                item['title']!.tr,
                                style: AppFonts.regular12
                              ),
                              SizedBox(height: 5),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(Icons.shopping_cart_outlined,size: 12),
                                  Text(
                                    item['price']!.tr,
                                    style: AppFonts.regular12,
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 0,
                          left: 0,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 4,
                            ),
                            decoration: BoxDecoration(
                              color: item['status'] == 'COMPLETED'
                                  ? AppColors.primaryColor
                                  : AppColors.primaryColor,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                            ),
                            child: Text(
                              item['status']!.tr,
                              style: AppFonts.regular12.copyWith(
                                color: AppColors.whiteColor
                              )
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
