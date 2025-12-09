
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

  initGetx();

  final LanguageController languageController = Get.put(LanguageController());
  await languageController.loadLanguage();

  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    final LanguageController lc = Get.put(LanguageController());

    return ScreenUtilInit(
      designSize: const Size(393, 852),
      minTextAdapt: true,
      useInheritedMediaQuery: true,
      builder: (context, _) {
        return Obx(() {
          Locale locale = lc.isEnglish.value
              ? const Locale('en', 'US')
              : const Locale('ar', 'SA');

          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            theme: lightTheme,
            locale: locale,
            fallbackLocale: const Locale('en', 'US'),
            translations: Language(),
            getPages: AppRouter.pages,
            initialRoute: RoutePath.splash,
          );
        });
      },
    );
  }
}