import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:jibjab/utils/app_colors/app_colors.dart';
import 'package:jibjab/utils/app_fonts/app_fonts.dart';
import 'package:jibjab/utils/assets_image/app_images.dart';

import '../../../../utils/static_strings/static_strings.dart';
import '../../details/widget/top_bar.dart';

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
              // Row of 7 items
              Row(
                children: [
                  // 1st Item
                  Expanded(
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(AppImages.homeItem1,),
                      ),
                    ),
                  ),
                  SizedBox(width: 5),

                  // 2nd Item
                  Expanded(
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(AppImages.homeItem2),
                      ),
                    ),
                  ),
                  SizedBox(width: 5),

                  // 3rd Item
                  Expanded(
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(AppImages.homeItem3, width: 30, height: 30),
                      ),
                    ),
                  ),
                  SizedBox(width: 5),

                  // 4th Item
                  Expanded(
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(AppImages.homeItem4),
                      ),
                    ),
                  ),
                  SizedBox(width: 5),

                  // 5th Item (Text)
                  Expanded(
                    child: Container(
                      height: 30,
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text(
                          "50km",
                          style: AppFonts.regular12.copyWith(color: AppColors.whiteColor),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 5),

                  // 6th Item (Text)
                  Expanded(
                    child: Container(
                      height: 30,
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text(
                          "Newest",
                          style: AppFonts.regular12.copyWith(color: AppColors.whiteColor),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 5),

                  // 7th Item (Icon)
                  Expanded(
                    child: GestureDetector(
                      onTap: (){




                      },
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: AppColors.whiteColor,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            AppImages.homeItem7,
                            width: 24,
                            height: 24,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
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
                        Column(
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
                              item['title']!,
                              style: AppFonts.regular12
                            ),
                            SizedBox(height: 5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(Icons.shopping_cart_outlined,size: 12),
                                Text(
                                  item['price']!,
                                  style: AppFonts.regular12,
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                          ],
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
                              item['status']!,
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
