import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jibjab/service/socket_service.dart';

import 'core/routes/routes.dart';
import 'core/theme/light_theme.dart';
import 'dependency_injection/getx_injection.dart';
import 'dependency_injection/path.dart';
import 'global/language/controller/language_controller.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // makes status bar transparent
      statusBarIconBrightness: Brightness.dark, // Android
      statusBarBrightness: Brightness.light, // iOS
    ),
  );
  initGetx();
  initDependencies();

  SocketApi.init();

  LanguageController languageController = Get.put(LanguageController());
  languageController.getLanguageType();

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
      key: Get.key,
      builder: (context, child) => GetBuilder<LanguageController>(
        builder: (controller) {
          return GetMaterialApp.router(
            debugShowCheckedModeBanner: false,
            theme: lightTheme,
            routeInformationParser: AppRouter.route.routeInformationParser,
            routerDelegate: AppRouter.route.routerDelegate,
            routeInformationProvider: AppRouter.route.routeInformationProvider,
            //locale: const Locale("ar", "SA"),
            fallbackLocale: const Locale("en", "US"),
            translations: Language(),
          );
        },
      ),
    );
  }
}
