import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

import '../../../../../utils/app_colors/app_colors.dart';
import '../../../../../utils/app_fonts/app_fonts.dart';
import '../../../../../utils/assets_image/app_images.dart';
import '../../../../../utils/dimensions/dimensions.dart';
import '../../../../../utils/static_strings/static_strings.dart';
import '../../../details/widget/top_bar.dart';


class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(Dimensions.pMedium),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: Dimensions.h(24)),

            /// App Bar
            TopBar(title: AppStrings.notification.tr),

            SizedBox(height: Dimensions.h(24)),

            /// Welcome Notification
            Container(
              height: Dimensions.h(72),
              padding: EdgeInsets.symmetric(
                horizontal: Dimensions.w(12),
              ),
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.circular(Dimensions.r(10)),
                border: Border.all(
                  color: AppColors.primaryColor,
                  width: Dimensions.w(1),
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  /// App Logo
                  ClipRRect(
                    borderRadius: BorderRadius.circular(Dimensions.r(6)),
                    child: Image.asset(
                      AppImages.appLogo,
                      width: Dimensions.w(38),
                      height: Dimensions.w(38),
                      fit: BoxFit.cover,
                    ),
                  ),

                  SizedBox(width: Dimensions.w(16)),

                  /// Text Content
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          style: AppFonts.regular12.copyWith(
                            fontSize: Dimensions.f(12),
                          ),
                          children: [
                            TextSpan(text: AppStrings.welcomeTo),
                            TextSpan(
                              text: AppStrings.appName,
                              style: AppFonts.regular12.copyWith(
                                fontSize: Dimensions.f(12),
                                color: AppColors.primaryColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: Dimensions.h(4)),
                      Text(
                        'Fri, 12 AM',
                        style: AppFonts.regular12.copyWith(
                          fontSize: Dimensions.f(11),
                          color: AppColors.grayColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: Dimensions.h(24)),

            /// Notification List
            notificationItem(
              title: "Post Confirmation",
              message:
              "Your order has been successfully placed! Confirms that the customer’s job/post is recorded.",
            ),
            notificationItem(
              title: "Post Accepted",
              message:
              "Your order has been accepted by a driver. Lets the customer know a driver is assigned.",
            ),
            notificationItem(
              title: "Post Picked Up",
              message:
              "Your item has been picked up by the driver. Updates customer that delivery is in progress.",
            ),
            notificationItem(
              title: "Post Delivered",
              message:
              "Your order has been delivered successfully. Confirms that the job is completed.",
            ),
            notificationItem(
              title: "Cancellation / Reschedule Alerts",
              message:
              "Your delivery has been canceled or rescheduled. Informs customer of any changes.",
            ),
          ],
        ),
      ),
    );
  }
}

Widget notificationItem({
  required String title,
  required String message,
}) {
  return Container(
    width: double.infinity,
    margin: EdgeInsets.only(bottom: Dimensions.h(12)),
    padding: EdgeInsets.all(Dimensions.pMedium),
    decoration: BoxDecoration(
      color: AppColors.whiteColor,
      borderRadius: BorderRadius.circular(Dimensions.r(8)),
      border: Border.all(
        color: AppColors.grayColor.withOpacity(.2),
        width: Dimensions.w(.8),
      ),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppFonts.regular12.copyWith(
            fontSize: Dimensions.f(12),
            color: AppColors.primaryColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: Dimensions.h(6)),
        Text(
          message,
          style: AppFonts.regular12.copyWith(
            fontSize: Dimensions.f(12),
            color: AppColors.blackColor,
            height: 1.45, // perfect readability
          ),
        ),
      ],
    ),
  );
}
