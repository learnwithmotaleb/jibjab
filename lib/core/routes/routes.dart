import 'package:get/get.dart';
import 'package:jibjab/core/routes/route_path.dart';
import 'package:jibjab/presentation/screens/auth/forget/controller/forget_controller.dart';
import 'package:jibjab/presentation/screens/auth/forget/screen/forget_screen.dart';
import 'package:jibjab/presentation/screens/auth/reset/controller/reset_controller.dart';
import 'package:jibjab/presentation/screens/auth/reset/screen/reset_screen.dart';
import 'package:jibjab/presentation/screens/auth/signup/controller/signup_controller.dart';
import 'package:jibjab/presentation/screens/auth/signup/screen/signup_screen.dart';
import 'package:jibjab/presentation/screens/auth/verification/screen/verification_screen.dart';
import 'package:jibjab/presentation/screens/auth/verify/controller/verify_controller.dart';
import 'package:jibjab/presentation/screens/auth/verify/screen/verify_screen.dart';
import 'package:jibjab/presentation/screens/navigationbar/controller/navigationbar_controller.dart';
import 'package:jibjab/presentation/screens/onboarding/screen/onboarding_screen.dart';
import 'package:jibjab/presentation/screens/splash_screen/splash_screen.dart';
import 'package:jibjab/presentation/screens/welcome/screen/welcome_screen.dart';

import '../../global/language/controller/language_controller.dart';
import '../../presentation/screens/auth/login/controller/login_controller.dart';
import '../../presentation/screens/auth/login/screen/login_screen.dart';
import '../../presentation/screens/auth/verification/controller/vefication_controller.dart';
import '../../presentation/screens/language/screen/language_screen.dart';
import '../../presentation/screens/navigationbar/screen/navigationbar_screen.dart';
import '../../presentation/screens/onboarding/controller/onboarding_controller.dart';
import '../../presentation/screens/welcome/controller/welcome_controller.dart';


class AppRouter {
  static final List<GetPage<dynamic>> pages = [
    GetPage(
      name: RoutePath.splash,
      page: () => const SplashScreen(),
      transition: Transition.fadeIn,
    ),

    GetPage(
      name: RoutePath.onboard,
      page: () => const OnboardingScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(OnboardingController());
      }),
    ),


    GetPage(
      name: RoutePath.welcome,
      page: () => const WelcomeScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(WelcomeController());
      }),
    ),
    GetPage(
      name: RoutePath.language,
      page: () => const LanguageScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(LanguageController());
      }),
    ),

    GetPage(
      name: RoutePath.login,
      page: () =>  LoginScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(LoginController());
      }),
    ),

  GetPage(
      name: RoutePath.signup,
      page: () =>  SignupScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(SignupController());
      }),
    ),

    GetPage(
      name: RoutePath.verify,
      page: () =>  VerifyScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(VerifyController());
      }),
    ),

   GetPage(
      name: RoutePath.forget,
      page: () =>  ForgetScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(ForgetController());
      }),
    ),

    GetPage(
      name: RoutePath.verification,
      page: () =>  VerificationScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(VerificationController());
      }),
    ),



    GetPage(
      name: RoutePath.reset,
      page: () =>  ResetScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(ResetController());
      }),
    ),


    //=============================Home Start====================
    GetPage(
      name: RoutePath.navigation,
      page: () =>  NavigationBarScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(NavigationBarController());
      }),
    ),







  ];
}
