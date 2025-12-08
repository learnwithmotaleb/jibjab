// utils/dimensions/dimensions.dart

import 'package:get/get.dart';

class Dimensions {
  // Dynamic values (they update on rotation too!)
  static double get screenWidth => Get.width;
  static double get screenHeight => Get.height;

  // Base design size (your UI design reference)
  static const double baseWidth = 390;   // iPhone 12 width
  static const double baseHeight = 844;  // iPhone 12 height

  static double getFontSize(double size) {
    final shortestSide = Get.width < Get.height ? Get.width : Get.height;
    return size * (shortestSide / baseWidth);
  }


  // 📌 Scale width
  static double w(double value) => value * (screenWidth / baseWidth);

  // 📌 Scale height
  static double h(double value) => value * (screenHeight / baseHeight);

  // 📌 Responsive font — best for orientation changes
  static double f(double size) {
    double shortestSide = screenWidth < screenHeight ? screenWidth : screenHeight;
    return size * (shortestSide / baseWidth);
  }

  // 📌 Radius
  static double r(double radius) => radius * (screenWidth / baseWidth);

  // 📌 Padding / Margin
  static double pSmall = w(8);
  static double pMedium = w(16);
  static double pLarge = w(24);
}
