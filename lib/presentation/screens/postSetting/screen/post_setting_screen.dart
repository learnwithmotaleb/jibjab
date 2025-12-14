import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:jibjab/utils/app_fonts/app_fonts.dart';
import 'package:jibjab/utils/dimensions/dimensions.dart';

import '../../../../utils/app_colors/app_colors.dart';
import '../../../../utils/assets_image/app_images.dart';
import '../../../../utils/static_strings/static_strings.dart';
import '../../details/widget/top_bar.dart';
import '../widget/chip_widget.dart';
import '../widget/circle_icon_widget.dart';
import '../widget/distanceChip.dart';
import '../widget/filterRow.dart';
import '../widget/setting_row_widget.dart';

class PostSettingScreen extends StatefulWidget {
  const PostSettingScreen({super.key});

  @override
  State<PostSettingScreen> createState() => _PostSettingScreenState();
}

class _PostSettingScreenState extends State<PostSettingScreen> {
  final List<String> iconItems = [
    AppImages.homeItem1,
    AppImages.homeItem2,
    AppImages.homeItem3,
    AppImages.homeItem4,
  ];

  String distance = "50 km";
  String sortBy = "Newest";

  bool movieDeliver = true;
  bool buyDeliver = true;
  bool recycle = false;
  bool freeGiveaway = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(Dimensions.pMedium),
          child: Column(
            children: [
              /// Top Bar
              TopBar(title: AppStrings.post.tr),
              SizedBox(height: Dimensions.h(18)),
              Divider(height: 1, color: AppColors.grayColor),
              SizedBox(height: Dimensions.h(8)),
              Row(
                children: [
                  ...List.generate(
                    iconItems.length,
                        (index) => Padding(
                      padding: EdgeInsets.only(right: Dimensions.w(6)),
                      child: CircleIconWidget(
                        image: iconItems[index],
                        size: Dimensions.w(48),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: TextChipWidget(text: distance),
                  ),
                  SizedBox(width: Dimensions.w(6)),
                  Expanded(
                    flex: 2,
                    child: TextChipWidget(text: sortBy),
                  ),
                ],
              ),
              SizedBox(height: Dimensions.h(18)),
              Divider(height: 1, color: AppColors.grayColor),
              SizedBox(height: Dimensions.h(8)),

              /// Sorted By Row
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: Dimensions.w(6)),
                    child: Image.asset(
                      AppImages.switchIcon,
                      width: Dimensions.w(24),
                      height: Dimensions.h(24),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: Dimensions.w(12)),
                    child: Text(
                      "Sorted By",
                      style: AppFonts.regular14.copyWith(
                        color: AppColors.blackColor,
                        fontSize: Dimensions.f(14),
                      ),
                    ),
                  ),
                  Container(
                    width: Dimensions.w(80),
                    height: Dimensions.h(32),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.r(8)),
                      border: Border.all(width: 1, color: AppColors.primaryColor),
                    ),
                    child: Center(
                      child: Text(
                        distance,
                        style: AppFonts.regular12.copyWith(
                          color: AppColors.blackColor,
                          fontSize: Dimensions.f(12),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 1,
                    height: Dimensions.h(32),
                    margin: EdgeInsets.symmetric(horizontal: Dimensions.w(8)),
                    color: AppColors.grayColor,
                  ),
                  Container(
                    width: Dimensions.w(80),
                    height: Dimensions.h(32),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.r(8)),
                      color: AppColors.primaryColor,
                    ),
                    child: Center(
                      child: Text(
                        sortBy,
                        style: AppFonts.regular12.copyWith(
                          color: AppColors.whiteColor,
                          fontSize: Dimensions.f(12),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: Dimensions.h(18)),
              Divider(height: 1, color: AppColors.grayColor),
              /// Distance Chips
              SizedBox(height: Dimensions.h(8)),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.location_on_outlined,
                      size: Dimensions.w(20), color: Colors.black54),
                  SizedBox(width: Dimensions.w(6)),
                  Text(
                    "Distance",
                    style: AppFonts.regular14.copyWith(
                        color: Colors.black87, fontSize: Dimensions.f(14)),
                  ),
                  SizedBox(width: Dimensions.w(12)),
                  Divider(height: 1, color: AppColors.grayColor),
                  SizedBox(height: Dimensions.h(8)),
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          distanceChip("40 km"),
                          SizedBox(width: Dimensions.w(8)),
                          distanceChip("50 km", isSelected: true),
                          SizedBox(width: Dimensions.w(8)),
                          distanceChip("60 km"),
                          SizedBox(width: Dimensions.w(8)),
                          distanceChip("120 km"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: Dimensions.h(8)),
              Divider(height: 1, color: AppColors.grayColor),
              SizedBox(height: Dimensions.h(18)),

              /// Filter Rows
              Column(
                children: [
                  Divider(height: 1, color: AppColors.grayColor),
                  SizedBox(height: Dimensions.h(8)),
                  filterRow(Icons.show_chart, "Show available post only"),
                  SizedBox(height: Dimensions.h(8)),
                  Divider(height: 1, color: AppColors.grayColor),
                  SizedBox(height: Dimensions.h(18)),
                  Divider(height: 1, color: AppColors.grayColor),
                  SizedBox(height: Dimensions.h(8)),
                  filterRow(Icons.people, "Only post requiring 1 person"),
                  SizedBox(height: Dimensions.h(8)),
                  Divider(height: 1, color: AppColors.grayColor),
                  SizedBox(height: Dimensions.h(18)),
                  Divider(height: 1, color: AppColors.grayColor),
                  SizedBox(height: Dimensions.h(8)),
                  filterRow(Icons.no_accounts, "Show only post without requests"),
                  SizedBox(height: Dimensions.h(8)),
                  Divider(height: 1, color: AppColors.grayColor),
                  SizedBox(height: Dimensions.h(18)),
                  Divider(height: 1, color: AppColors.grayColor),
                  SizedBox(height: Dimensions.h(8)),
                  filterRow(Icons.grid_view, "Only post of selected size"),
                  SizedBox(height: Dimensions.h(8)),
                  Divider(height: 1, color:AppColors.grayColor),
                ],
              ),
              SizedBox(height: Dimensions.h(30)),

              /// Size Buttons Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: ["S", "M", "L", "XL"]
                    .map(
                      (size) => Expanded(
                        
                    child: Container(
                      width: Dimensions.w(64),
                      height: Dimensions.h(27),
                      margin: EdgeInsets.symmetric(horizontal: Dimensions.w(5)),
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(Dimensions.r(5)),
                      ),
                      child: Center(
                        child: Text(
                          size,
                          style: AppFonts.regular20.copyWith(
                              color: AppColors.whiteColor,
                              fontSize: Dimensions.f(20)),
                        ),
                      ),
                    ),
                  ),
                )
                    .toList(),
              ),
              SizedBox(height: Dimensions.h(30)),

              /// Post Type Row
              Row(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Icon(Icons.copy, size: Dimensions.w(24)),
                  ),
                  Flexible(
                    child: Text(
                      "Post Type",
                      style: TextStyle(
                        fontSize: Dimensions.f(16),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: Dimensions.h(20)),

              /// Setting Rows
              Column(
                children: [
                  SettingRow(
                    icon: Icons.local_shipping_outlined,
                    label: 'Movie/Deliver',
                    isActive: movieDeliver,
                    onChanged: (value) {
                      setState(() {
                        movieDeliver = value;
                      });
                    },
                  ),
                  SettingRow(
                    icon: Icons.shopping_cart_outlined,
                    label: 'Buy/Deliver',
                    isActive: buyDeliver,
                    onChanged: (value) {
                      setState(() {
                        buyDeliver = value;
                      });
                    },
                  ),
                  SettingRow(
                    icon: Icons.recycling_outlined,
                    label: 'Recycle',
                    isActive: recycle,
                    onChanged: (value) {
                      setState(() {
                        recycle = value;
                      });
                    },
                  ),
                  SettingRow(
                    icon: Icons.local_shipping_outlined,
                    label: 'Remove',
                    isActive: freeGiveaway,
                    onChanged: (value) {
                      setState(() {
                        freeGiveaway = value;
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
