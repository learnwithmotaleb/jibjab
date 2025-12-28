import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/app_colors/app_colors.dart';
import '../../../../utils/app_fonts/app_fonts.dart';
import '../../../../utils/dimensions/dimensions.dart';
import '../../../../utils/static_strings/static_strings.dart';

class ReadMoreScreen extends StatefulWidget {
  const ReadMoreScreen({super.key});

  @override
  State<ReadMoreScreen> createState() => _ReadMoreScreenState();
}

class _ReadMoreScreenState extends State<ReadMoreScreen> {

  final List<Map<String, String>> lastestNews = [
    {
      "image": "assets/icons/lastest_news_image.png",
      "title": "A sustainable  platform",
      "subtitle":
      "JibJab is the easiest way to get help with everything you need to be moved, recycled, or delivered.\n\n"
          "Through the app, you instantly connect with ID-verified JibJab members ready to help you.\n\n"
          "How it works:\n"
          "1. Take a photo of what you need help with.\n"
          "2. Set your price.\n"
          "3. Select a Helper.\n\n"
          "⚡ Quick & easy: Most users get help within minutes.\n"
          "💳 Simple & secure payments inside the app.",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(Dimensions.pMedium),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              /// ---------------- HEADER ----------------
              Row(
                children: [
                  InkWell(
                    onTap: () => Get.back(),
                    child: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: AppColors.primaryColor,
                      size: Dimensions.f(22),
                    ),
                  ),

                  SizedBox(width: Dimensions.w(16)),

                  Expanded(
                    child: Center(
                      child: Text(
                        AppStrings.readMore.tr,
                        style: AppFonts.medium20.copyWith(
                          fontSize: Dimensions.f(22),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(width: Dimensions.w(38)), // keeps title centered
                ],
              ),

              SizedBox(height: Dimensions.h(25)),

              /// ---------------- CONTENT ----------------
              ListView.builder(
                itemCount: lastestNews.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  final item = lastestNews[index];
                  return Padding(
                    padding: EdgeInsets.only(bottom: Dimensions.h(20)),
                    child: buildInfoCard(
                      imageUrl: item["image"]!,
                      title: item["title"]!.tr,
                      subtitle: item["subtitle"]!.tr,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// ---------------- INFO CARD ----------------
  Widget buildInfoCard({
    required String imageUrl,
    required String title,
    required String subtitle,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Image
        ClipRRect(
          borderRadius: BorderRadius.circular(Dimensions.r(14)),
          child: Image.asset(
            imageUrl,
            width: double.infinity,
            height: Dimensions.h(220),
            fit: BoxFit.cover,
          ),
        ),

        SizedBox(height: Dimensions.h(18)),

        /// Title
        Text(
          title.tr,
          style: AppFonts.medium20.copyWith(
            fontSize: Dimensions.f(20),
          ),
        ),

        SizedBox(height: Dimensions.h(14)),

        /// Subtitle / Paragraph
        Text(
          subtitle.tr,
          style: AppFonts.regularSubTitle12,
        ),
      ],
    );
  }
}
