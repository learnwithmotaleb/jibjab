
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'core/routes/route_path.dart';
import 'core/routes/routes.dart';
import 'core/theme/light_theme.dart';
import 'dependency_injection/getx_injection.dart';
import 'global/language/controller/language_controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark, // Android
      statusBarBrightness: Brightness.light,    // iOS
    ),
  );

  // Initialize your DI (register services/controllers used app-wide)
  initGetx();

  // Initialize language controller and load saved language
  final languageController = Get.put(LanguageController(), permanent: true);
  await languageController.getLanguageType(); // loads locale from SharedPreferences

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      minTextAdapt: true,
      useInheritedMediaQuery: true,
      builder: (context, _) => GetBuilder<LanguageController>(
        builder: (controller) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            theme: lightTheme,
            // Use Locale from controller (not hard-coded)
            locale:Locale(controller.selectedLanguage.value),
            // Fallback if key is missing
            fallbackLocale: const Locale('en', 'US'),
            // Your Translations impl
            translations: Language(),
            // Define routes
            getPages: AppRouter.pages,
            // Start at Splash (or onboarding)
            initialRoute: RoutePath.splash,
            // DO NOT register widgets in initialBinding. Use it for services/controllers only.
            // initialBinding: BindingsBuilder(() {
            //   Get.lazyPut(() => SplashController());
            // }),
          );
        },
      ),
    );
  }
}
