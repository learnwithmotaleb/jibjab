import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

import '../../../../utils/app_colors/app_colors.dart';
import '../../../../utils/app_fonts/app_fonts.dart';
import '../../../../utils/dimensions/dimensions.dart';
import '../../../../utils/static_strings/static_strings.dart';
import '../../../widgets/image_picker/image_picker_controller.dart';
import '../../details/widget/top_bar.dart';
import '../controller/mypost_controller.dart';
import '../widget/my_post_card.dart';

class MyPostScreen extends StatelessWidget {
  MyPostScreen({super.key});

  final controller = Get.put(MyPostController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 5),
          child: Column(
            children: [
              TopBar(title: AppStrings.myPost.tr),
              SizedBox(height: Dimensions.h(20)),

              /// 🔹 Tabs
              Obx(() => Row(
                children: [
                  _tabItem("Pending Post".tr, 0),
                  const SizedBox(width: 10),
                  _tabItem("Active Post".tr, 1),
                  const SizedBox(width: 10),
                  _tabItem("Completed Post".tr, 2),
                ],
              )),

              SizedBox(height: Dimensions.h(10)),

              /// 🔹 PageView
              Expanded(
                child: PageView(
                  controller: controller.pageController,
                  onPageChanged: controller.onPageChanged,
                  children: [
                    _postList(controller.pendingPosts),
                    _postList(controller.acceptedPosts),
                    _postList(controller.completedPosts),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// 🔹 Tab Widget
  Widget _tabItem(String title, int index) {
    return Expanded(
      child: GestureDetector(
        onTap: () => controller.onTabChange(index),
        child: Container(
          height: 40,
          decoration: BoxDecoration(
            color: controller.selectedIndex.value == index
                ? AppColors.completedBackground
                : AppColors.primaryColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              title.tr,
              style: AppFonts.regular12.copyWith(
                color: controller.selectedIndex.value == index
                    ? AppColors.whiteColor
                    : AppColors.blackColor,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// 🔹 ListView
  Widget _postList(List<Map<String, dynamic>> list) {
    return ListView.builder(
      itemCount: list.length,
      padding: const EdgeInsets.only(bottom: 20),
      itemBuilder: (_, index) => PostCard(data: list[index]),
    );
  }
}
