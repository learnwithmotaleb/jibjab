import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:jibjab/utils/app_colors/app_colors.dart';
import '../../../../utils/app_fonts/app_fonts.dart';
import '../../../../utils/assets_image/app_images.dart';
import '../../../../utils/dimensions/dimensions.dart';
import '../../../../utils/static_strings/static_strings.dart';
import '../../details/widget/top_bar.dart';
import '../widget/ratting_widget.dart';
import 'package:jibjab/presentation/widgets/app_button/app_outline_button.dart';

class CustomerReviewScreen extends StatelessWidget {
  const CustomerReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Dimensions.w(16),
          ),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              SizedBox(height: Dimensions.h(16)),

              /// 🔹 App Bar
              TopBar(title: AppStrings.customerReview.tr),

              SizedBox(height: Dimensions.h(24)),

              /// 🔹 Rating Summary
              _ratingSummary(),

              SizedBox(height: Dimensions.h(24)),

              /// 🔹 Reviews Title
              Text(
                AppStrings.reviews.tr,
                style: AppFonts.regular20.copyWith(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                ),
              ),

              SizedBox(height: Dimensions.h(12)),

              /// 🔹 Review List
              _reviewItem(
                name: "Abdul Motaleb",
                date: "23 Mar",
                rating: 4.0,
                review:
                "Porem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum.",
              ),

              _reviewItem(
                name: "Abdul Motaleb",
                date: "25 Mar",
                rating: 4.0,
                review:
                "Porem ipsum dolor sit amet, consectetur adipiscing elit.",
              ),

              _reviewItem(
                name: "Sonia",
                date: "25 Mar",
                rating: 5.0,
                review: "The Motaleb Code Queen! 👑",
              ),


              Divider(
                thickness: 1,
                color: AppColors.blackColor.withOpacity(0.1),
              ),

              SizedBox(height: Dimensions.h(40)),

              /// 🔹 View More Button
              AppOutlinedButton(
                width: double.infinity,
                height: Dimensions.h(48),
                borderRadius: 12,
                textStyle: AppFonts.medium16.copyWith(
                  color: AppColors.primaryColor
                ),
                onPressed: () {},
                label: AppStrings.viewMore.tr,
              ),

              SizedBox(height: Dimensions.h(24)),
            ],
          ),
        ),
      ),
    );
  }

  /// ⭐ Rating Summary Widget
  Widget _ratingSummary() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [

        /// LEFT SIDE (Ratings + Stars)
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "234 Ratings".tr,
              style: AppFonts.medium16.copyWith(
                color: AppColors.pendingBackground,
                fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 6),
            CustomerReviewRating(
              rating: 4.0,
              color: AppColors.primaryColor,
              size: 30,
            ),
          ],
        ),

        /// RIGHT SIDE (Average Rating)
        Text(
          "4.0",
          style: AppFonts.mediumBold24.copyWith(
            fontWeight: FontWeight.w700,
            color: AppColors.pendingBackground
          ),
        ),
      ],
    );
  }


  /// 📝 Review Item Widget
  Widget _reviewItem({
    required String name,
    required String date,
    required double rating,
    required String review,
  }) {
    return Container(
      margin: EdgeInsets.only(bottom: Dimensions.h(16)),
      padding: EdgeInsets.all(Dimensions.w(12)),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: AppColors.blackColor.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Avatar
          CircleAvatar(
            radius: Dimensions.w(22),
            backgroundImage: AssetImage(AppImages.motalebProfile),
          ),

          SizedBox(width: Dimensions.w(12)),

          /// Content
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Name + Date
                      Text(
                                      name.tr,
                                      style: AppFonts.medium20,
                                    ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    /// Rating
                    CustomerReviewRating(rating: rating,color: AppColors.pendingBackground,size: 20,),


                    Text(
                      date.tr,
                      style: AppFonts.regular16.copyWith(
                        color: AppColors.blackColor,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),

                SizedBox(height: Dimensions.h(6)),


                SizedBox(height: Dimensions.h(6)),

                /// Review Text
                Text(
                  review.tr,
                  style: AppFonts.regular12.copyWith(
                    height: 1.4,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
