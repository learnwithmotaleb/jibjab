import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:jibjab/core/routes/route_path.dart';
import 'package:jibjab/presentation/screens/account_setting/accountSetting/controller/account_setting_controller.dart';
import 'package:jibjab/presentation/screens/account_setting/accountSetting/screen/account_setting_screen.dart';
import 'package:jibjab/presentation/screens/account_setting/changePassword/controller/change_password_controller.dart';
import 'package:jibjab/presentation/screens/account_setting/changePassword/screen/change_password_screen.dart';
import 'package:jibjab/presentation/screens/account_setting/faqs/controller/faqs_controller.dart';
import 'package:jibjab/presentation/screens/account_setting/privacyPolicy/controller/privacy_policy_controller.dart';
import 'package:jibjab/presentation/screens/addLocation/controller/add_location_controller.dart';
import 'package:jibjab/presentation/screens/addLocation/screen/add_location_screen.dart';
import 'package:jibjab/presentation/screens/adviser/controller/adviser_controller.dart';
import 'package:jibjab/presentation/screens/adviser/screen/adviser_screen.dart';
import 'package:jibjab/presentation/screens/allCategories/controller/all_categoriesController.dart';
import 'package:jibjab/presentation/screens/allCategories/screen/all_categories.dart';
import 'package:jibjab/presentation/screens/auth/forget/controller/forget_controller.dart';
import 'package:jibjab/presentation/screens/auth/forget/screen/forget_screen.dart';
import 'package:jibjab/presentation/screens/auth/reset/controller/reset_controller.dart';
import 'package:jibjab/presentation/screens/auth/reset/screen/reset_screen.dart';
import 'package:jibjab/presentation/screens/auth/signup/controller/signup_controller.dart';
import 'package:jibjab/presentation/screens/auth/signup/screen/signup_screen.dart';
import 'package:jibjab/presentation/screens/auth/verification/screen/verification_screen.dart';
import 'package:jibjab/presentation/screens/auth/verify/controller/verify_controller.dart';
import 'package:jibjab/presentation/screens/auth/verify/screen/verify_screen.dart';
import 'package:jibjab/presentation/screens/customerReview/controller/customer_review_controller.dart';
import 'package:jibjab/presentation/screens/customerReview/screen/customer_review_screen.dart';
import 'package:jibjab/presentation/screens/details/controller/details_controller.dart';
import 'package:jibjab/presentation/screens/details/screen/details_screen.dart';
import 'package:jibjab/presentation/screens/dropLocation/controller/drop_location_controller.dart';
import 'package:jibjab/presentation/screens/dropLocation/screen/drop_location_screen.dart';
import 'package:jibjab/presentation/screens/home/controller/home_controller.dart';
import 'package:jibjab/presentation/screens/home/screen/home_screen.dart';
import 'package:jibjab/presentation/screens/important/controller/important_controller.dart';
import 'package:jibjab/presentation/screens/important/screen/important_screen.dart';
import 'package:jibjab/presentation/screens/invite/controller/invite_controller.dart';
import 'package:jibjab/presentation/screens/invite/screen/invite_screen.dart';
import 'package:jibjab/presentation/screens/myPost/controller/mypost_controller.dart';
import 'package:jibjab/presentation/screens/myPost/screen/mypost_screen.dart';
import 'package:jibjab/presentation/screens/navigationbar/controller/navigationbar_controller.dart';
import 'package:jibjab/presentation/screens/newPost/controller/add_new_post_controller.dart';
import 'package:jibjab/presentation/screens/onboarding/screen/onboarding_screen.dart';
import 'package:jibjab/presentation/screens/pay/controller/pay_controller.dart';
import 'package:jibjab/presentation/screens/pay/screen/pay_screen.dart';
import 'package:jibjab/presentation/screens/pickupLocation/controller/pickup_location_controller.dart';
import 'package:jibjab/presentation/screens/pickupLocation/screen/pickup_location_screen.dart';
import 'package:jibjab/presentation/screens/picup/screen/pickup_screen.dart';
import 'package:jibjab/presentation/screens/post/controller/post_controller.dart';
import 'package:jibjab/presentation/screens/post/screen/post_screen.dart';
import 'package:jibjab/presentation/screens/postSetting/controller/post_setting_controller.dart';
import 'package:jibjab/presentation/screens/postSetting/screen/post_setting_screen.dart';
import 'package:jibjab/presentation/screens/profile/contactUs/screen/contactus_screen.dart';
import 'package:jibjab/presentation/screens/profile/editProfile/controller/edit_profile_controller.dart';
import 'package:jibjab/presentation/screens/profile/editProfile/screen/edit_profile_screen.dart';
import 'package:jibjab/presentation/screens/profile/languages/controller/language_setting_controller.dart';
import 'package:jibjab/presentation/screens/profile/languages/screen/language_setting_screen.dart';
import 'package:jibjab/presentation/screens/profile/profile/controller/profile_controller.dart';
import 'package:jibjab/presentation/screens/profile/profile/screen/profile_screen.dart';
import 'package:jibjab/presentation/screens/profile/publicProfile/controller/public_profile_controller.dart';
import 'package:jibjab/presentation/screens/profile/publicProfile/screen/public_profile_screen.dart';
import 'package:jibjab/presentation/screens/readmore/controller/readmore_controller.dart';
import 'package:jibjab/presentation/screens/readmore/screen/readmore_screen.dart';
import 'package:jibjab/presentation/screens/selectTimeSlot/controller/select_time_slot_controller.dart';
import 'package:jibjab/presentation/screens/selectTimeSlot/screen/select_time_slot_screen.dart';
import 'package:jibjab/presentation/screens/splash_screen/splash_screen.dart';
import 'package:jibjab/presentation/screens/welcome/screen/welcome_screen.dart';

import '../../global/language/controller/language_controller.dart';
import '../../presentation/screens/account_setting/faqs/screen/faqs_screen.dart';
import '../../presentation/screens/account_setting/privacyPolicy/screen/privacy_policy_screen.dart';
import '../../presentation/screens/account_setting/termsCondition/controller/terms_condition_controller.dart';
import '../../presentation/screens/account_setting/termsCondition/screen/terms_condition_screen.dart';
import '../../presentation/screens/auth/login/controller/login_controller.dart';
import '../../presentation/screens/auth/login/screen/login_screen.dart';
import '../../presentation/screens/auth/verification/controller/vefication_controller.dart';
import '../../presentation/screens/language/screen/language_screen.dart';
import '../../presentation/screens/navigationbar/screen/navigationbar_screen.dart';
import '../../presentation/screens/newPost/screen/add_new_post_screen.dart';
import '../../presentation/screens/onboarding/controller/onboarding_controller.dart';
import '../../presentation/screens/picup/controller/pickup_controller.dart';
import '../../presentation/screens/profile/contactUs/controller/contactus_controller.dart';
import '../../presentation/screens/profile/notification/controller/notification_controller.dart';
import '../../presentation/screens/profile/notification/screen/notification_screen.dart';
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

    GetPage(
      name: RoutePath.home,
      page: () =>  HomeScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(HomeController());
      }),
    ),

    GetPage(
      name: RoutePath.readMore,
      page: () =>  ReadMoreScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(ReadMoreController());
      }),
    ),


    GetPage(
      name: RoutePath.details,
      page: () =>  DetailsScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(DetailsController());
      }),
    ),




    //================================
    GetPage(
      name: RoutePath.pay,
      page: () =>  PayScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(PayController());
      }),
    ),



    //================================
    GetPage(
      name: RoutePath.important,
      page: () =>  ImportantScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(ImportantController());
      }),
    ),


    //================================
    GetPage(
      name: RoutePath.invite,
      page: () =>  InviteScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(InviteController());
      }),
    ),


    //================================Adviser Profile Screen =================
    GetPage(
      name: RoutePath.adviser,
      page: () =>  AdviserScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(AdviserController());
      }),
    ),


  //================================Post Screen =================
    GetPage(
      name: RoutePath.post,
      page: () =>  PostScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(PostController());
      }),
    ),

    //================================Post Setting Screen =================
    GetPage(
      name: RoutePath.postSetting,
      page: () =>  PostSettingScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(PostSettingController());
      }),
    ),


    //====================MyPost Screen===============

    GetPage(
      name: RoutePath.myPostScreen,
      page: () =>  MyPostScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(MyPostController());
      }),
    ),

    //====================Customer Review===============

    GetPage(
      name: RoutePath.customerReview,
      page: () =>  CustomerReviewScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(CustomerReviewController());
      }),
    ),



    //====================All Categories Screen===============

    GetPage(
      name: RoutePath.allCategories,
      page: () =>  AllCategoriesScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(AllCategoriesController());
      }),
    ),




    //====================AddNewPostScreen===============

    GetPage(
      name: RoutePath.addNewPostScreen,
      page: () =>  AddNewPostScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(AddNewPostController());
      }),
    ),

















    //====================Profile Screen===============

    GetPage(
      name: RoutePath.profile,
      page: () =>  ProfileScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(ProfileController());
      }),
    ),




    //====================Edit Profile===============

    GetPage(
      name: RoutePath.editProfile,
      page: () =>  EditProfileScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(EditProfileController());
      }),
    ),

    //====================Contract Us===============

    GetPage(
      name: RoutePath.contactUs,
      page: () =>  ContactusScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(ContactusController());
      }),
    ),


  //====================LanguageScreen ===============

    GetPage(
      name: RoutePath.languagesSetting,
      page: () =>  LanguageSettingScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(LanguageSettingController());
      }),
    ),


//====================PublicProfileScreen ===============

    GetPage(
      name: RoutePath.publicProfile,
      page: () =>  PublicProfileScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(PublicProfileController());
      }),
    ),

//====================AccountSettingScreen ===============

    GetPage(
      name: RoutePath.accountSetting,
      page: () =>  AccountSettingScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(AccountSettingController());
      }),
    ),



//====================ChangePasswordScreen ===============

    GetPage(
      name: RoutePath.changePassword,
      page: () =>  ChangePasswordScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(ChangePasswordController());
      }),
    ),




//====================TermsConditionScreen ===============

    GetPage(
      name: RoutePath.termsCondition,
      page: () =>  TermsConditionScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(TermsConditionController());
      }),
    ),
//====================PrivacyPolicyScreen ===============

    GetPage(
      name: RoutePath.privacyPolicyScreen,
      page: () =>  PrivacyPolicyScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(PrivacyPolicyController());
      }),
    ),


//====================PrivacyPolicyScreen ===============

    GetPage(
      name: RoutePath.faqs,
      page: () =>  FaqsScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(FaqsController());
      }),
    ),


//====================NotificationScreen ===============

    GetPage(
      name: RoutePath.notification,
      page: () =>  NotificationScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(NotificationController());
      }),
    ),



//====================SelectTimeSlotScreen ===============

    GetPage(
      name: RoutePath.selectTimeSlot,
      page: () =>  SelectTimeSlotScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(SelectTimeSlotController());
      }),
    ),



//====================SelectTimeSlotScreen ===============

    GetPage(
      name: RoutePath.pickup,
      page: () =>  PickUpScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(PickupController());
      }),
    ),



//====================addLocation ===============

    GetPage(
      name: RoutePath.addLocation,
      page: () =>  AddLocationScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(AddLocationController());
      }),
    ),


//====================PickupLocationScreen ===============

    GetPage(
      name: RoutePath.pickUpLocation,
      page: () =>  PickupLocationScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(PickupLocationController());
      }),
    ),



//====================DropLocationScreen ===============

    GetPage(
      name: RoutePath.dropLocation,
      page: () =>  DropLocationScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(DropLocationController());
      }),
    ),






  ];
}
