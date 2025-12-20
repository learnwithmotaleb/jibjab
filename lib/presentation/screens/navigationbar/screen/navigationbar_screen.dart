import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jibjab/presentation/screens/customerReview/screen/customer_review_screen.dart';
import 'package:jibjab/presentation/screens/post/screen/post_screen.dart';
import 'package:jibjab/presentation/screens/profile/profile/screen/profile_screen.dart';
import '../../AddNewOrder/allCategories/screen/all_categories.dart';
import '../../home/screen/home_screen.dart';
import '../../myPost/screen/mypost_screen.dart';
import '../controller/navigationbar_controller.dart';
import 'package:jibjab/utils/app_colors/app_colors.dart';
import 'package:jibjab/utils/assets_image/app_images.dart';

class NavigationBarScreen extends StatelessWidget {

  final navController = Get.put(NavigationBarController());

  final List<Widget> pages = [
    HomeScreen(),
    MyPostScreen(),
    AllCategoriesScreen(),
    //PostScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // BODY SWITCHING
      body: Obx(() => pages[navController.currentIndex.value]),

      bottomNavigationBar: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 5,
                    spreadRadius: 2,
                  )
                ],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  navItem(AppImages.home, "Home", 0, size: 40),
                  navItem(AppImages.post, "Post", 1, size: 40),
                  navItem(AppImages.addNewPost, "Add", 2, size: 40),
                  navItem(AppImages.profile, "Profile", 3, size: 40),
                ],
              ),
            ),
          ],
        )


    );
  }

  Widget navItem(dynamic icon, String label, int index, {double size = 60}) {
    return Obx(() {
      bool isActive = navController.currentIndex.value == index;

      return GestureDetector(
        onTap: () => navController.changePage(index),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [

            Transform.translate(
              offset: Offset(0, isActive ? -20 : 0),
              child: Stack(
                alignment: Alignment.center,
                children: [

                  // Active Blur Background
                  if (isActive)
                    Container(
                      width: 70,
                      height: 70,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppColors.primaryColor,
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(
                                width: 5,
                                color: AppColors.whiteColor,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: AppColors.primaryColor,
                                  spreadRadius: 20,
                                  blurRadius: 20,
                                  offset: Offset(5, 5),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),

                  // ICON
                  icon is IconData
                      ? Icon(
                    icon,
                    size: size,
                    color: isActive
                        ? AppColors.whiteColor
                        : AppColors.blackColorOrginal,
                  )
                      : Image.asset(
                    icon,
                    width: size,
                    height: size,
                    color: isActive
                        ? AppColors.whiteColor
                        : AppColors.blackColorOrginal,
                  ),
                ],
              ),
            ),

            SizedBox(height: 4),

            if (!isActive)
              Text(
                label,
                style: TextStyle(
                  fontSize: 12,
                  color: AppColors.blackColorOrginal,
                ),
              ),
          ],
        ),
      );
    });
  }
}
