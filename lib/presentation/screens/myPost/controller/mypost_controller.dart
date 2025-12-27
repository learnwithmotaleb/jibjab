import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jibjab/utils/assets_image/app_images.dart';

class MyPostController extends GetxController {
  final PageController pageController = PageController();

  var selectedIndex = 0.obs;

  /// 🔹 Demo Data
  final pendingPosts = <Map<String, dynamic>>[
    {
      "title": "House Cleaning",
      "price": "\$20",
      "priority": "High",
      "size": "S",
      "status": "Pending",
      "image": AppImages.homeScreenAllStatus,
    },
    {
      "title": "Car Wash",
      "price": "\$15",
      "priority": "Medium",
      "size": "S",
      "status": "Pending",
      "image": AppImages.homeScreenAllStatus,
    },
    {
      "title": "Car Wash",
      "price": "\$15",
      "priority": "Medium",
      "size": "S",
      "status": "Pending",
      "image": AppImages.homeScreenAllStatus,
    },
    {
      "title": "Car Wash",
      "price": "\$15",
      "priority": "Medium",
      "size": "S",
      "status": "Pending",
      "image": AppImages.homeScreenAllStatus,
    },
    {
      "title": "Car Wash",
      "price": "\$15",
      "priority": "Medium",
      "size": "S",
      "status": "Pending",
      "image": AppImages.homeScreenAllStatus,
    },
    {
      "title": "Car Wash",
      "price": "\$15",
      "priority": "Medium",
      "size": "S",
      "status": "Pending",
      "image": AppImages.homeScreenAllStatus,
    },
    {
      "title": "Car Wash",
      "price": "\$15",
      "priority": "Medium",
      "size": "S",
      "status": "Pending",
      "image": AppImages.homeScreenAllStatus,
    },
  ];

  final acceptedPosts = <Map<String, dynamic>>[
    {
      "title": "Plumbing Work",
      "price": "\$50",
      "priority": "High",
      "size": "S",
      "status": "Accepted",
      "image": AppImages.homeScreenAllStatus,
    },
    {
      "title": "Plumbing Work",
      "price": "\$50",
      "priority": "High",
      "size": "S",
      "status": "Accepted",
      "image": AppImages.homeScreenAllStatus,
    },
    {
      "title": "Plumbing Work",
      "price": "\$50",
      "priority": "High",
      "size": "S",
      "status": "Accepted",
      "image": AppImages.homeScreenAllStatus,
    },
    {
      "title": "Plumbing Work",
      "price": "\$50",
      "priority": "High",
      "size": "S",
      "status": "Accepted",
      "image": AppImages.homeScreenAllStatus,
    },
    {
      "title": "Plumbing Work",
      "price": "\$50",
      "priority": "High",
      "size": "S",
      "status": "Accepted",
      "image": AppImages.homeScreenAllStatus,
    },
    {
      "title": "Plumbing Work",
      "price": "\$50",
      "priority": "High",
      "size": "S",
      "status": "Accepted",
      "image": AppImages.homeScreenAllStatus,
    },
  ];

  final completedPosts = <Map<String, dynamic>>[
    {
      "title": "AC Repair",
      "price": "\$80",
      "priority": "Low",
      "size": "S",
      "status": "Completed",
      "image": AppImages.homeScreenAllStatus,
    },
    {
      "title": "AC Repair",
      "price": "\$80",
      "priority": "Low",
      "size": "S",
      "status": "Completed",
      "image": AppImages.homeScreenAllStatus,
    },
    {
      "title": "AC Repair",
      "price": "\$80",
      "priority": "Low",
      "size": "S",
      "status": "Completed",
      "image": AppImages.homeScreenAllStatus,
    },
    {
      "title": "AC Repair",
      "price": "\$80",
      "priority": "Low",
      "size": "S",
      "status": "Completed",
      "image": AppImages.homeScreenAllStatus,
    },
    {
      "title": "AC Repair",
      "price": "\$80",
      "priority": "Low",
      "size": "S",
      "status": "Completed",
      "image": AppImages.homeScreenAllStatus,
    },
    {
      "title": "AC Repair",
      "price": "\$80",
      "priority": "Low",
      "size": "S",
      "status": "Completed",
      "image": AppImages.homeScreenAllStatus,
    },
    {
      "title": "AC Repair",
      "price": "\$80",
      "priority": "Low",
      "size": "S",
      "status": "Completed",
      "image": AppImages.homeScreenAllStatus,
    },

  ];

  void onTabChange(int index) {
    selectedIndex.value = index;
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }


  void onPageChanged(int index) {
    selectedIndex.value = index;
  }
}
