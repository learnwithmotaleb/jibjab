import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:jibjab/utils/app_colors/app_colors.dart';
import 'package:jibjab/utils/assets_image/app_images.dart';

import '../../../../../utils/app_fonts/app_fonts.dart';
import '../../../../../utils/dimensions/dimensions.dart';
import '../../../../../utils/static_strings/static_strings.dart';
import '../../../details/widget/top_bar.dart';

class FaqsScreen extends StatefulWidget {
  const FaqsScreen({super.key});

  @override
  State<FaqsScreen> createState() => _FaqsScreenState();
}

class _FaqsScreenState extends State<FaqsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Dimensions.w(16)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: Dimensions.h(24)),

              /// Top Bar
              TopBar(title: AppStrings.faqs.tr),

              SizedBox(height: Dimensions.h(32)),

              /// Scrollable Content
              Expanded(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /// Title
                      Text(
                        AppStrings.faqs.tr,
                        style: AppFonts.medium16
                      ),
                      SizedBox(height: Dimensions.h(24)),

                      /// FAQ Items
                      _faqExpansionTile(
                        title: "How do I report a successful delivery?",
                        content:
                        "Fill in the required details, including your full name, email address, and a secure password. "
                            "Ensure your email is valid as it will be used for account verification and communication.",
                      ),
                      SizedBox(height: Dimensions.h(8)),

                      _faqListTile(title: "How do I report a successful delivery?"),
                      SizedBox(height: Dimensions.h(8)),

                      _faqListTile(title: "How can I update my vehicle or personal info?"),
                      SizedBox(height: Dimensions.h(8)),

                      _faqListTile(title: "How do I get paid?"),
                      SizedBox(height: Dimensions.h(8)),

                      _faqListTile(title: "How do I start my delivery route?"),
                      SizedBox(height: Dimensions.h(12)),

                      /// Need More Help Section
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Need More Help?",
                          style: AppFonts.medium16.copyWith(
                            fontSize: Dimensions.w(18),
                          ),
                        ),
                      ),
                      SizedBox(height: Dimensions.h(20)),

                      GestureDetector(
                        onTap: () {},
                        child: Card(
                          elevation: 0,
                          color: AppColors.whiteColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(Dimensions.r(12)),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(Dimensions.w(16)),
                            child: Row(
                              children: [
                                Image.asset(
                                  AppImages.needMoreHelp,
                                  width: Dimensions.w(40),
                                  height: Dimensions.h(40),
                                  fit: BoxFit.contain,
                                ),
                                SizedBox(width: Dimensions.w(20)),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Call Us (+1-212-456-7890)",
                                        style: AppFonts.medium16.copyWith(
                                          fontSize: Dimensions.w(16),
                                        ),
                                      ),
                                      SizedBox(height: Dimensions.h(4)),
                                      Text(
                                        "Our help line service is active: 24/7",
                                        style: AppFonts.regular14.copyWith(
                                          fontSize: Dimensions.w(14),
                                          color: AppColors.blackColorOrginal,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: Dimensions.h(20)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Expansion Tile FAQ
  Widget _faqExpansionTile({required String title, required String content}) {
    return Card(
      color: AppColors.whiteColor,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Dimensions.r(5)),
      ),
      child: ExpansionTile(
        iconColor: AppColors.primaryColor,
        collapsedIconColor: AppColors.primaryColor,
        title: Text(
          title,
          style: AppFonts.medium16,
        ),
        children: [
          Padding(
            padding: EdgeInsets.all(Dimensions.w(16)),
            child: Text(
              content,
              style: AppFonts.regular14,
            ),
          )
        ],
      ),
    );
  }

  /// Simple ListTile FAQ
  Widget _faqListTile({required String title, VoidCallback? onTap}) {
    return Card(
      color: AppColors.whiteColor,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Dimensions.r(5)),
      ),
      child: ListTile(
        title: Text(
          title,
          style: AppFonts.medium16,
        ),
        trailing: Icon(Icons.arrow_forward_ios, color: AppColors.primaryColor, size: Dimensions.w(18)),
        onTap: onTap ?? () {


        },
        contentPadding: EdgeInsets.symmetric(horizontal: Dimensions.w(10)),
      ),
    );
  }
}
