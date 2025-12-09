import 'package:flutter/material.dart';
import 'package:jibjab/utils/app_colors/app_colors.dart';
import 'package:jibjab/utils/assets_image/app_images.dart';
import 'package:jibjab/utils/static_strings/static_strings.dart';

class NavigationBarScreen extends StatefulWidget {
  @override
  _NavigationBarScreenState createState() => _NavigationBarScreenState();
}

class _NavigationBarScreenState extends State<NavigationBarScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Page: $currentIndex", style: TextStyle(fontSize: 25))),

      // Using Stack to overlap navigation bar
      bottomNavigationBar: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
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

            child:Row(
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
      ),
    );
  }

  Widget navItem(dynamic icon, String label, int index, {double size = 40}) {
    bool isActive = currentIndex == index;

    return GestureDetector(
      onTap: () => setState(() => currentIndex = index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [

          // Move active icon up by 10px
          Transform.translate(
            offset: Offset(0, isActive ? -20 : 0),
            child: Stack(
              alignment: Alignment.center,
              children: [

                // Active Background Circle
                if (isActive)
                  Container(
                    width: 65,
                    height: 65,
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor.withOpacity(0.5),
                     borderRadius: BorderRadius.circular(100),
                      border: Border.all(width: 2, color: AppColors.whiteColor),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.primaryColor,
                          blurRadius: 1,
                          offset: Offset(0, 0),
                        ),
                      ],
                    ),
                  ),

                // ICON
                icon is IconData
                    ? Icon(
                  icon,
                  size: size,
                  color: isActive
                      ? AppColors.whiteColor
                      : AppColors.primaryColor,
                )
                    : Image.asset(
                  icon,
                  width: size,
                  height: size,
                  color: isActive
                      ? AppColors.whiteColor
                      : AppColors.primaryColor,
                ),
              ],
            ),
          ),

          SizedBox(height: 4),

          // LABEL: hide when active
          if (!isActive)
            Text(
              label,
              style: TextStyle(
                fontSize: 12,
                color: AppColors.primaryColor,
                fontWeight: FontWeight.normal,
              ),
            ),
        ],
      ),
    );
  }


}
