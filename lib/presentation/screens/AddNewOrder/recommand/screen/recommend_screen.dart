import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:jibjab/utils/app_colors/app_colors.dart';
import 'package:jibjab/utils/app_fonts/app_fonts.dart';
import 'package:jibjab/utils/assets_image/app_images.dart';

import '../../../../../utils/dimensions/dimensions.dart';
import '../../../../../utils/static_strings/static_strings.dart';
import '../../../details/widget/top_bar.dart';

class RecommendScreen extends StatefulWidget {
  const RecommendScreen({super.key});

  @override
  State<RecommendScreen> createState() => _RecommendScreenState();
}

class _RecommendScreenState extends State<RecommendScreen> {
  final PageController _pageController = PageController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: Dimensions.h(20)),

            /// 🔹 Top Bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TopBar(title: AppStrings.recommend.tr),
            ),

            SizedBox(height: Dimensions.h(30)),

            /// 🔹 Page View
            Expanded(
              child: PageView(
                controller: _pageController,

                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                children: [
                  /// -------- PAGE 1 --------
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(child: Image.asset(AppImages.recommendImage,width: 77,height: 77,)),
                        SizedBox(height: Dimensions.h(40)),
                        Text(AppStrings.thingsWeStronglyRecommend,style: AppFonts.regular12,),
                        SizedBox(height: Dimensions.h(16)),
                        Text(AppStrings.weAdviceYouNot, style: AppFonts.regular12,),
                        SizedBox(height: Dimensions.h(16)),
                        Text(AppStrings.exampleOfSuchItemsAre, style: AppFonts.regular12,),
                        SizedBox(height: Dimensions.h(16)),
                        Text(AppStrings.pianos,style: AppFonts.regular12,),
                        SizedBox(height: Dimensions.h(16)),
                        Text(AppStrings.safetyBoxes,style: AppFonts.regular12,),
                        SizedBox(height: Dimensions.h(16)),
                        Text(AppStrings.bouldersGravelSoil,style: AppFonts.regular12,),
                      ],
                    ),
                  ),

                  /// -------- PAGE 2 (example) --------
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(child: Image.asset(AppImages.recommendImage,width: 77,height: 77,)),

                        SizedBox(height: Dimensions.h(40)),
                        Text(AppStrings.thingsWeStronglyRecommend,style: AppFonts.regular12,),
                        SizedBox(height: Dimensions.h(20)),
                        Text(AppStrings.weAdviceYouNot, style: AppFonts.regular12,),
                        SizedBox(height: Dimensions.h(20)),
                        Text(AppStrings.exampleOfSuchItemsAre, style: AppFonts.regular12,),
                        SizedBox(height: Dimensions.h(20)),
                        Text(AppStrings.pianos,style: AppFonts.regular12,),
                        SizedBox(height: Dimensions.h(20)),
                        Text(AppStrings.safetyBoxes,style: AppFonts.regular12,),
                        SizedBox(height: Dimensions.h(20)),
                        Text(AppStrings.bouldersGravelSoil,style: AppFonts.regular12,),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            /// 🔹 Bottom Indicator
            SizedBox(height: Dimensions.h(10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(2, (index) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  width: currentIndex == index ? 18 : 18,
                  height: currentIndex == index ? 18 : 18,
                  decoration: BoxDecoration(
                    color: currentIndex == index
                        ? AppColors.primaryColor
                        : AppColors.grayColorAddNewPostScreen,
                    shape: BoxShape.circle,
                  ),
                );
              }),
            ),
            SizedBox(height: Dimensions.h(200)),
          ],
        ),
      ),
    );
  }
}

