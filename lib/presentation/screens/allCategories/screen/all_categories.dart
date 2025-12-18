import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:jibjab/utils/app_colors/app_colors.dart';
import 'package:jibjab/utils/assets_image/app_images.dart';

import '../../../../utils/dimensions/dimensions.dart';
import '../../../../utils/static_strings/static_strings.dart';
import '../../details/widget/top_bar.dart';
import '../widget/alert_widget.dart';
import '../widget/card_category_widget.dart';
import '../widget/category_alert_data_widget.dart';

class AllCategoriesScreen extends StatefulWidget {
  const AllCategoriesScreen({super.key});

  @override
  State<AllCategoriesScreen> createState() => _AllCategoriesScreenState();
}

class _AllCategoriesScreenState extends State<AllCategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColors.whiteColor,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: Dimensions.h(16)),
            /// 🔹 App Bar
            TopBar(title: AppStrings.allCategories.tr),

            SizedBox(height: Dimensions.h(50)),
            Column(
              children: [
                CategoryCard(
                  title: "Move/Deliver",
                  image: AppImages.moveDeliver,
                  gradientColors: [Color(0xFF61AFFA), Color(0xFF1D67D8)],
                  onTap: () => showCategoryAlert(context, CategoryType.move),
                ),
                SizedBox(height: Dimensions.h(10)),
                CategoryCard(
                  title: "Buy/Deliver",
                  image: AppImages.buyDeliver,
                  gradientColors: [Color(0xFFE25395), Color(0xFF6930BD)],
                  onTap: () => showCategoryAlert(context, CategoryType.buy),
                ),
                SizedBox(height: Dimensions.h(10)),
                CategoryCard(
                  title: "Remove and recycle",
                  image: AppImages.removeAndRecycle,
                  gradientColors: [Color(0xFF27E9BD), Color(0xFF0CB69C)],
                  onTap: () => showCategoryAlert(context, CategoryType.remove),
                ),
                SizedBox(height: Dimensions.h(10)),
                CategoryCard(
                  title: "Give-away",
                  image: AppImages.giveAway,
                  gradientColors: [Color(0xFFFBC678), Color(0xFFF13E68)],
                  onTap: () => showCategoryAlert(context, CategoryType.giveAway),
                ),
              ],
            ),

          ],


        ),
      ),
    );
  }
}
