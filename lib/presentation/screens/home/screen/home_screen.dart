import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jibjab/core/routes/route_path.dart';
import 'package:jibjab/presentation/widgets/app_button/app_outline_button.dart';
import 'package:jibjab/utils/assets_image/app_images.dart';
import '../../../../utils/app_colors/app_colors.dart';
import '../../../../utils/app_fonts/app_fonts.dart';
import '../../../../utils/dimensions/dimensions.dart';
import '../../../../utils/static_strings/static_strings.dart';
import '../widget/video_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map<String, dynamic>> items = [
    {"imageUrl": AppImages.imageActive, "title": "Fresh Mango", "price": 120.0},
    {"imageUrl": AppImages.imageActive, "title": "Red Apple", "price": 90.0},
    {
      "imageUrl": AppImages.imageActive,
      "title": "Orange Juice",
      "price": 150.0,
    },
    {"imageUrl": AppImages.imageActive, "title": "Banana", "price": 80.0},
    {"imageUrl": AppImages.imageActive, "title": "Grapes", "price": 200.0},
  ];

  final List<Map<String, String>> lastestNews = [
    {
      "image": AppImages.lastestNews,
      "title": "Welcome to JibJab!",
      "subtitle":
          "JibJab is the easiest way to get help with everything you \nneed to be moved, recycled, or delivered. Through the app, you instantly connect with other ID-verified JibJab members who are ready to help you. \nHow it works: \n1. Take a photo of what you need help with. \n2. Set the price you are willing to pay. \n3. Select a Helper to do the job. \n⚡ Quick and easy: Most users get a request to be helped within minutes, and are helped within a few hours. 💳 Simple and secure payments: Posting an ad is free and payments are securely made within the app after the task is completed.",
    },
  ];

  final List<Map<String, String>> earnList = [
    {
      "title": AppStrings.earnCreditsByInvitingFriends,
      "image": AppImages.earnImage,
    },
  ];


  final Map<String, dynamic> videoSectionData = {
    "videoPath": "assets/icons/video.mp4", // Later this can be a URL from server
    "title": AppStrings.howExplainIn20,
    "description": "How JibJab Checks Recycling Verified Recycling for Peace of Mind. At JibJab, we ensure that every recycling task is fully verified with GPS, time stamps, and photos. This means you can trust that your items are being handled properly and responsibly. Safe. Transparent. Reliable."
  };




  var description = "How JibJab Checks Recycling Verified Recycling for Peace of Mind At JibJab, we ensure that every recycling task is fully verified with GPS, time stamps, and photos. This means you can trust that your items are being handled properly and responsibly. Safe. Transparent. Reliable.";


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.whiteColor,
        shadowColor: AppColors.whiteColor,
        title: Text(
          AppStrings.appName.tr,
          style: AppFonts.mediumBold20.copyWith(fontSize: 22),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // /// --- App Title ---
                // Center(
                //   child: Text(
                //     AppStrings.appName.tr,
                //     style: AppFonts.mediumBold20.copyWith(fontSize: 22),
                //   ),
                // ),
                SizedBox(height: size.height * 0.03),

                /// --- Stats Row ---
                Row(
                  children: [
                    _buildStatCard(
                      "15 sec.",
                      AppImages.timer,
                      "Average\nResponse",
                    ),
                    const SizedBox(width: 8),
                    _buildStatCard(
                      "+1,27m.",
                      AppImages.deliver,
                      "Deliveries\n& Pickups",
                    ),
                    const SizedBox(width: 8),
                    _buildStatCard(
                      "~774,000",
                      AppImages.reduced,
                      "Reduced\nCar Rides",
                    ),
                  ],
                ),

                SizedBox(height: size.height * 0.03),

                /// --- Section Title ---
                Text(AppStrings.activePostInYourArea, style: AppFonts.medium20),
                SizedBox(height: size.height * 0.01),

                /// --- Horizontal List ---
                buildHorizontalList(items),

                SizedBox(height: size.height * 0.05),

                /// --- Latest News Section ---
                Text(AppStrings.lastestNews, style: AppFonts.medium20),
                SizedBox(height: size.height * 0.02),

                /// --- News List ---
                ListView.builder(
                  itemCount: lastestNews.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.zero,
                  itemBuilder: (context, index) {
                    final item = lastestNews[index];
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: buildInfoCard(
                        imageUrl: item["image"]!,
                        title: item["title"]!,
                        subtitle: item["subtitle"]!,
                      ),
                    );
                  },
                ),
                SizedBox(height: size.height * 0.01),
                Center(
                  child: TextButton(
                    onPressed: () {
                      Get.toNamed(RoutePath.readMore);
                    },
                    child: Text(
                      AppStrings.readMore,
                      style: AppFonts.mediumBold18,
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.03),

                /// --- News List ---
                ListView.builder(
                  itemCount: earnList.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.zero,
                  itemBuilder: (context, index) {
                    final item = earnList[index];
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: buildInfoCardEar(
                        title: item["title"]!,
                        imageUrl: item["image"]!,
                      ),
                    );
                  },
                ),

                Center(
                  child: AppOutlinedButton(
                    borderWidth: 1,
                    backgroundColor: AppColors.whiteColor,
                    borderRadius: 10,
                    width: 303,
                    height: 48,
                    onPressed: () {
                      Get.toNamed(RoutePath.details);
                    },
                    label: AppStrings.inviteAndEarn,
                  ),
                ),
                SizedBox(height: Dimensions.h(24)),

                VideoWidget(
                  assetPath: videoSectionData["videoPath"],
                ),

                SizedBox(height: Dimensions.h(16)),
                Text(
                  videoSectionData["title"],
                  style: AppFonts.medium20,
                ),
                SizedBox(height: Dimensions.h(8)),
                Text(
                  videoSectionData["description"],
                  style: AppFonts.regular12,
                ),
                SizedBox(height: Dimensions.h(40)),

              ],
            ),
          ),
        ),
      ),
    );
  }

  /// --- Stat Card ---
  Widget _buildStatCard(String title, String? imagePath, String subTitle) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: Colors.black12.withOpacity(0.05),
              blurRadius: 8,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          children: [
            Text(title, style: AppFonts.regular12),
            const SizedBox(height: 8),
            Row(
              children: [
                CircleAvatar(
                  radius: 18,
                  backgroundColor: AppColors.whiteColor,
                  child: Image.asset(imagePath!),
                ),
                const SizedBox(width: 5),
                Expanded(
                  child: Text(
                    subTitle,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /// --- Horizontal List of Items ---
  Widget buildHorizontalList(List<Map<String, dynamic>> items) {
    return SizedBox(
      height: 70,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          final item = items[index];
          return Padding(
            padding: const EdgeInsets.only(right: 1),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Stack(
                children: [
                  /// --- Image ---
                  Image.asset(
                    item["imageUrl"],
                    width: 110,
                    height: 70,
                    fit: BoxFit.cover,
                  ),

                  /// --- Overlay ---
                  Container(
                    width: 110,
                    height: 70,

                  ),

                  BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 0.1, sigmaY: 0.1),
                    child: Container(
                      width: 110,
                      height: 70,
                      color: Colors.transparent,
                    ),
                  ),

                  /// --- Title & Price ---
                  Positioned(
                    bottom: 5,
                    left: 8,
                    right: 8,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item["title"],
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          "\$${item["price"]}",
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.white70,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  /// --- Reusable News/Info Card Widget ---
  Widget buildInfoCard({
    required String imageUrl,
    required String title,
    required String subtitle,
    double imageHeight = 180,
    double borderRadius = 12,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(borderRadius),
          child: Image.asset(
            imageUrl,
            width: double.infinity,
            height: imageHeight,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 20),
        Text(title, style: AppFonts.mediumPrimary16),
        const SizedBox(height: 20),
        Text(subtitle, style: AppFonts.regularSubTitle12),
      ],
    );
  }

  Widget buildInfoCardEar({
    required String title,
    required String imageUrl,

    double imageHeight = 180,
    double borderRadius = 12,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(child: Text(title, style: AppFonts.regular20)),
        const SizedBox(height: 20),
        ClipRRect(
          borderRadius: BorderRadius.circular(Dimensions.r(14)),
          child: Center(
            child: Image.asset(
              imageUrl,
              width: 260,
              height: Dimensions.h(198),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
