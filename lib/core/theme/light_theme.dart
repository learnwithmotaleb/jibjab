import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../../utils/app_colors/app_colors.dart';

TextStyle style = TextStyle(color: AppColors.blackLightColor);

const lightThemeFont = "Inter", darkThemeFont = "Inter";
final TextStyle interMedium = GoogleFonts.inter(
  fontWeight: FontWeight.w500, // Medium weight
  color: AppColors.blackColor, // default color
  fontSize: 16.sp, // default size
);

final lightTheme = ThemeData(
  primaryColor: AppColors.primaryColor,
  scaffoldBackgroundColor: AppColors.grayColor,
  brightness: Brightness.light,
  useMaterial3: true,
  fontFamily: lightThemeFont,
  splashColor: Colors.transparent,
  inputDecorationTheme: inputDecorationTheme,
  drawerTheme: DrawerThemeData(backgroundColor: AppColors.whiteColor),
  textTheme: TextTheme(
    bodySmall: const TextStyle(color: AppColors.blackLightColor),
    bodyMedium: GoogleFonts.inter(
      color: AppColors.blackLightColor,
      fontSize: 18,
    ),
    bodyLarge: const TextStyle(color: AppColors.blackLightColor),
    labelSmall: const TextStyle(color: AppColors.blackLightColor),
    labelMedium: const TextStyle(color: AppColors.blackLightColor),
    labelLarge: const TextStyle(color: AppColors.blackLightColor),
    displaySmall: const TextStyle(color: AppColors.blackLightColor),
    displayMedium: const TextStyle(color: AppColors.blackLightColor),
    displayLarge: const TextStyle(color: AppColors.blackLightColor),
  ),
  // switchTheme: SwitchThemeData(
  //   thumbColor:
  //       WidgetStateProperty.resolveWith<Color>((states) => lightThemeColor),
  // ),
  appBarTheme: appBarTheme,
  bottomNavigationBarTheme: bottomNavigationBarTheme,
);

////=================== Input Decoration =======================

final InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: const BorderSide(color: AppColors.grayColor, width: 1),
    gapPadding: 0,
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: const BorderSide(color: AppColors.primaryColor, width: 1),
    gapPadding: 0,
  ),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: const BorderSide(color: AppColors.grayColor, width: 1),
    gapPadding: 0,
  ),
  fillColor: AppColors.grayColor,
  contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
  hintStyle: const TextStyle(
    color: AppColors.blackLightColor,
    fontWeight: FontWeight.w300,
  ),
);

//=========================== App Bar =============================
final AppBarTheme appBarTheme = AppBarTheme(
  //color:CustomColor.kPrimaryColorx,
  elevation: 0,
  centerTitle: true,
  iconTheme: const IconThemeData(color: AppColors.blackLightColor),
  backgroundColor: AppColors.whiteColor,
  scrolledUnderElevation: 0,
  titleTextStyle: interMedium.copyWith(fontSize: 16.sp, color: AppColors.blackColor),
  actionsIconTheme: const IconThemeData(color: AppColors.blackLightColor),
  systemOverlayStyle: const SystemUiOverlayStyle(
    // Status bar color
    statusBarColor: AppColors.whiteColor,
    // Status bar brightness (optional)
    statusBarIconBrightness: Brightness.light, // For Android (dark icons)
    statusBarBrightness: Brightness.light, // For iOS (dark icons)
  ),
);

///========================= Bottom NavigationBar ==============================
final BottomNavigationBarThemeData bottomNavigationBarTheme =
    BottomNavigationBarThemeData(
      backgroundColor: AppColors.whiteColor,
      elevation: 1,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: AppColors.primaryColor,
      showUnselectedLabels: true,
      selectedIconTheme: const IconThemeData(size: 28),
      unselectedItemColor: Colors.grey,
      selectedLabelStyle: const TextStyle(color: AppColors.primaryColor),
    );

// ===================== Comon colors =========================
const Color lightThemeColor = Colors.white,
    white = Colors.white,
    black = Colors.black,
    darkThemeColor = AppColors.primaryColor;
