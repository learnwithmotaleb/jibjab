// File: utils/dimensions/dimensions.dart

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Dimensions {
  // Default font size if none provided
  static double getFontSizeDefault(BuildContext context) {
    // You can customize this based on screen size or theme
    final screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth < 360) {
      return 12.0;
    } else if (screenWidth < 480) {
      return 14.0;
    } else if (screenWidth < 720) {
      return 16.0;
    } else {
      return 18.0;
    }
  }

  // Safe method to get font size with optional override
  static double getFontSize(BuildContext context, {double? fontSize}) {
    return fontSize ?? getFontSizeDefault(Get.context ?? context);
  }

  // Example: You can also add default padding/margin sizes
  static double getPaddingSmall(BuildContext context) {
    return 8.0;
  }

  static double getPaddingMedium(BuildContext context) {
    return 16.0;
  }

  static double getPaddingLarge(BuildContext context) {
    return 24.0;
  }
}
