import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:jibjab/core/routes/route_path.dart';
import 'package:jibjab/presentation/screens/AddNewOrder/details_order/controller/details_order_controller.dart';
import 'package:jibjab/presentation/screens/AddNewOrder/dropOff/controller/drop_off_controller.dart';
import 'package:jibjab/presentation/screens/AddNewOrder/dropOffMap/controller/drop_off_map_controller.dart';
import 'package:jibjab/presentation/screens/AddNewOrder/recommand/controller/recommend_controller.dart';
import 'package:jibjab/presentation/screens/AddNewOrder/recommand/screen/recommend_screen.dart';
import 'package:jibjab/presentation/screens/AddNewOrder/titleDescription/controller/title_description_controller.dart';
import 'package:jibjab/presentation/screens/AddNewOrder/wilPay/controller/will_pay_controller.dart';
import 'package:jibjab/presentation/screens/BuyDeliver/PickOffB/controller/b_pickoff_controller.dart';
import 'package:jibjab/presentation/screens/BuyDeliver/bwallet/controller/b_wallet_controller.dart';
import 'package:jibjab/presentation/screens/BuyDeliver/detailsOrderB/controller/b_details_order_controller.dart';
import 'package:jibjab/presentation/screens/BuyDeliver/dropLocationB/controller/b_drop_location_controller.dart';
import 'package:jibjab/presentation/screens/BuyDeliver/dropOffB/controller/b_dropoff_controller.dart';
import 'package:jibjab/presentation/screens/BuyDeliver/dropOffMapB/controller/b_dropoff_map_controller.dart';
import 'package:jibjab/presentation/screens/BuyDeliver/pickUpB/controller/b_pickup_controller.dart';
import 'package:jibjab/presentation/screens/BuyDeliver/pickUpMapB/controller/b_pickup_map_controller.dart';
import 'package:jibjab/presentation/screens/BuyDeliver/selectStore/controller/select_store_controller.dart';
import 'package:jibjab/presentation/screens/BuyDeliver/selectTimeSlotB/controller/b_select_time_slot_controller.dart';
import 'package:jibjab/presentation/screens/BuyDeliver/shoppingList/controller/shopping_list_controller.dart';
import 'package:jibjab/presentation/screens/BuyDeliver/titleDesciptionB/controller/b_title_description_controller.dart';
import 'package:jibjab/presentation/screens/BuyDeliver/willPayB/controller/b_willpay_controller.dart';
import 'package:jibjab/presentation/screens/RemoveRecycle/details_order_r/controller/r_details_order_controller.dart';
import 'package:jibjab/presentation/screens/RemoveRecycle/details_order_r/screen/r_details_order_screen.dart';
import 'package:jibjab/presentation/screens/RemoveRecycle/dropLocation_r/controller/r_drop_location_controller.dart';
import 'package:jibjab/presentation/screens/RemoveRecycle/dropLocation_r/screen/r_drop_location_screen.dart';
import 'package:jibjab/presentation/screens/RemoveRecycle/dropOffMap_r/controller/r_drop_off_map_controller.dart';
import 'package:jibjab/presentation/screens/RemoveRecycle/dropOffMap_r/screen/r_drop_off_map_screen.dart';
import 'package:jibjab/presentation/screens/RemoveRecycle/dropOff_r/controller/r_drop_off_controller.dart';
import 'package:jibjab/presentation/screens/RemoveRecycle/dropOff_r/screen/r_drop_off_screen.dart';
import 'package:jibjab/presentation/screens/RemoveRecycle/newPost_r/controller/r_add_new_post_controller.dart';
import 'package:jibjab/presentation/screens/RemoveRecycle/newPost_r/screen/r_add_new_post_screen.dart';
import 'package:jibjab/presentation/screens/RemoveRecycle/pickLocation_r/controller/r_pickup_location_controller.dart';
import 'package:jibjab/presentation/screens/RemoveRecycle/pickLocation_r/screen/r_pickup_location_screen.dart';
import 'package:jibjab/presentation/screens/RemoveRecycle/pickOff_r/controller/r_pick_off_controller.dart';
import 'package:jibjab/presentation/screens/RemoveRecycle/pickOff_r/screen/r_pick_off_screen.dart';
import 'package:jibjab/presentation/screens/RemoveRecycle/pickUpMap_r/controller/r_pickup_map_controller.dart';
import 'package:jibjab/presentation/screens/RemoveRecycle/rwallet/controller/r_wallet_controller.dart';
import 'package:jibjab/presentation/screens/RemoveRecycle/rwallet/screen/r_wallet_screen.dart';
import 'package:jibjab/presentation/screens/RemoveRecycle/selectTimeSlot_r/controller/r_select_time_slot_controller.dart';
import 'package:jibjab/presentation/screens/RemoveRecycle/selectTimeSlot_r/screen/r_select_time_slot_screen.dart';
import 'package:jibjab/presentation/screens/RemoveRecycle/titleDescription_r/controller/r_title_description_controller.dart';
import 'package:jibjab/presentation/screens/RemoveRecycle/titleDescription_r/screen/r_title_description_screen.dart';
import 'package:jibjab/presentation/screens/RemoveRecycle/wasteType/screen/waste_type_screen.dart';
import 'package:jibjab/presentation/screens/RemoveRecycle/wilPay_r/controller/r_will_pay_controller.dart';
import 'package:jibjab/presentation/screens/RemoveRecycle/wilPay_r/screen/r_will_pay_screen.dart';
import 'package:jibjab/presentation/screens/account_setting/accountSetting/controller/account_setting_controller.dart';
import 'package:jibjab/presentation/screens/account_setting/accountSetting/screen/account_setting_screen.dart';
import 'package:jibjab/presentation/screens/account_setting/changePassword/controller/change_password_controller.dart';
import 'package:jibjab/presentation/screens/account_setting/changePassword/screen/change_password_screen.dart';
import 'package:jibjab/presentation/screens/account_setting/faqs/controller/faqs_controller.dart';
import 'package:jibjab/presentation/screens/account_setting/privacyPolicy/controller/privacy_policy_controller.dart';
import 'package:jibjab/presentation/screens/adviser/controller/adviser_controller.dart';
import 'package:jibjab/presentation/screens/adviser/screen/adviser_screen.dart';
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
import 'package:jibjab/presentation/screens/home/controller/home_controller.dart';
import 'package:jibjab/presentation/screens/home/screen/home_screen.dart';
import 'package:jibjab/presentation/screens/important/controller/important_controller.dart';
import 'package:jibjab/presentation/screens/important/screen/important_screen.dart';
import 'package:jibjab/presentation/screens/invite/controller/invite_controller.dart';
import 'package:jibjab/presentation/screens/invite/screen/invite_screen.dart';
import 'package:jibjab/presentation/screens/myPost/controller/mypost_controller.dart';
import 'package:jibjab/presentation/screens/myPost/screen/mypost_screen.dart';
import 'package:jibjab/presentation/screens/navigationbar/controller/navigationbar_controller.dart';
import 'package:jibjab/presentation/screens/onboarding/screen/onboarding_screen.dart';
import 'package:jibjab/presentation/screens/pay/controller/pay_controller.dart';
import 'package:jibjab/presentation/screens/pay/screen/pay_screen.dart';

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
import 'package:jibjab/presentation/screens/splash_screen/splash_screen.dart';
import 'package:jibjab/presentation/screens/wallet/controller/wallet_controller.dart';
import 'package:jibjab/presentation/screens/wallet/screen/wallet_screen.dart';
import 'package:jibjab/presentation/screens/welcome/screen/welcome_screen.dart';

import '../../global/language/controller/language_controller.dart';
import '../../presentation/screens/AddNewOrder/allCategories/controller/all_categoriesController.dart';
import '../../presentation/screens/AddNewOrder/allCategories/screen/all_categories.dart';
import '../../presentation/screens/AddNewOrder/details_order/screen/details_order_screen.dart';
import '../../presentation/screens/AddNewOrder/dropLocation/controller/drop_location_controller.dart';
import '../../presentation/screens/AddNewOrder/dropLocation/screen/drop_location_screen.dart';
import '../../presentation/screens/AddNewOrder/dropOff/screen/drop_off_screen.dart';
import '../../presentation/screens/AddNewOrder/dropOffMap/screen/drop_off_map_screen.dart';
import '../../presentation/screens/AddNewOrder/newPost/controller/add_new_post_controller.dart';
import '../../presentation/screens/AddNewOrder/newPost/screen/add_new_post_screen.dart';
import '../../presentation/screens/AddNewOrder/pickLocation/controller/pickup_location_controller.dart';
import '../../presentation/screens/AddNewOrder/pickLocation/screen/pickup_location_screen.dart';
import '../../presentation/screens/AddNewOrder/pickOff/controller/pick_off_controller.dart';
import '../../presentation/screens/AddNewOrder/pickOff/screen/pick_off_screen.dart';
import '../../presentation/screens/AddNewOrder/pickUpMap/controller/pickup_map_controller.dart' hide PickupLocationController;
import '../../presentation/screens/AddNewOrder/pickUpMap/screen/pickup_map_screen.dart';

import '../../presentation/screens/AddNewOrder/selectTimeSlot/controller/select_time_slot_controller.dart';
import '../../presentation/screens/AddNewOrder/selectTimeSlot/screen/select_time_slot_screen.dart';
import '../../presentation/screens/AddNewOrder/titleDescription/screen/title_description_screen.dart';
import '../../presentation/screens/AddNewOrder/wilPay/screen/will_pay_screen.dart';
import '../../presentation/screens/BuyDeliver/PickOffB/screen/b_pickoff_screen.dart';
import '../../presentation/screens/BuyDeliver/bwallet/screen/b_wallet_screen.dart';
import '../../presentation/screens/BuyDeliver/detailsOrderB/screen/b_details_order_screen.dart';
import '../../presentation/screens/BuyDeliver/dropLocationB/screen/b_drop_location_screen.dart';
import '../../presentation/screens/BuyDeliver/dropOffB/screen/b_dropoff_screen.dart';
import '../../presentation/screens/BuyDeliver/dropOffMapB/screen/b_dropoff_map_screen.dart';
import '../../presentation/screens/BuyDeliver/pickUpB/screen/b_pickup_screen.dart';
import '../../presentation/screens/BuyDeliver/pickUpMapB/screen/b_pickup_map_screen.dart';
import '../../presentation/screens/BuyDeliver/selectStore/screen/select_store_screen.dart';
import '../../presentation/screens/BuyDeliver/selectTimeSlotB/screen/b_select_time_slot_screen.dart';
import '../../presentation/screens/BuyDeliver/shoppingList/screen/shopping_list_screen.dart';
import '../../presentation/screens/BuyDeliver/titleDesciptionB/screen/b_title_description_screen.dart';
import '../../presentation/screens/BuyDeliver/willPayB/screen/b_willpay_screen.dart';
import '../../presentation/screens/GiveAway/details_order_g/controller/g_details_order_controller.dart';
import '../../presentation/screens/GiveAway/details_order_g/screen/g_details_order_screen.dart';
import '../../presentation/screens/GiveAway/dropLocation_g/controller/g_drop_location_controller.dart';
import '../../presentation/screens/GiveAway/dropLocation_g/screen/g_drop_location_screen.dart';
import '../../presentation/screens/GiveAway/dropOffMap_g/controller/g_drop_off_map_controller.dart';
import '../../presentation/screens/GiveAway/dropOffMap_g/screen/g_drop_off_map_screen.dart';
import '../../presentation/screens/GiveAway/dropOff_g/controller/g_drop_off_controller.dart';
import '../../presentation/screens/GiveAway/dropOff_g/screen/g_drop_off_screen.dart';
import '../../presentation/screens/GiveAway/newPost_g/controller/g_add_new_post_controller.dart';
import '../../presentation/screens/GiveAway/newPost_g/screen/g_add_new_post_screen.dart';
import '../../presentation/screens/GiveAway/pickLocation_g/controller/g_pickup_location_controller.dart';
import '../../presentation/screens/GiveAway/pickLocation_g/screen/g_pickup_location_screen.dart';
import '../../presentation/screens/GiveAway/pickOff_g/controller/g_pick_off_controller.dart';
import '../../presentation/screens/GiveAway/pickOff_g/screen/g_pick_off_screen.dart';
import '../../presentation/screens/GiveAway/pickUpMap_g/controller/g_pickup_map_controller.dart';
import '../../presentation/screens/GiveAway/pickUpMap_g/screen/g_pickup_map_screen.dart';
import '../../presentation/screens/GiveAway/selectTimeSlot_g/controller/g_select_time_slot_controller.dart';
import '../../presentation/screens/GiveAway/selectTimeSlot_g/screen/g_select_time_slot_screen.dart';
import '../../presentation/screens/GiveAway/titleDescription_g/controller/g_title_description_controller.dart';
import '../../presentation/screens/GiveAway/titleDescription_g/screen/g_title_description_screen.dart';
import '../../presentation/screens/GiveAway/wallet_g/controller/g_wallet_controller.dart';
import '../../presentation/screens/GiveAway/wallet_g/screen/g_wallet_screen.dart';
import '../../presentation/screens/GiveAway/wilPay_g/controller/g_will_pay_controller.dart';
import '../../presentation/screens/GiveAway/wilPay_g/screen/g_will_pay_screen.dart';
import '../../presentation/screens/RemoveRecycle/pickUpMap_r/screen/r_pickup_map_screen.dart';
import '../../presentation/screens/RemoveRecycle/wasteType/controller/waste_type_controller.dart';
import '../../presentation/screens/account_setting/faqs/screen/faqs_screen.dart';
import '../../presentation/screens/account_setting/privacyPolicy/screen/privacy_policy_screen.dart';
import '../../presentation/screens/account_setting/termsCondition/controller/terms_condition_controller.dart';
import '../../presentation/screens/account_setting/termsCondition/screen/terms_condition_screen.dart';
import '../../presentation/screens/auth/login/controller/login_controller.dart';
import '../../presentation/screens/auth/login/screen/login_screen.dart';
import '../../presentation/screens/auth/verification/controller/vefication_controller.dart';
import '../../presentation/screens/language/screen/language_screen.dart';
import '../../presentation/screens/navigationbar/screen/navigationbar_screen.dart';
import '../../presentation/screens/onboarding/controller/onboarding_controller.dart';

import '../../presentation/screens/profile/contactUs/controller/contactus_controller.dart';
import '../../presentation/screens/profile/notification/controller/notification_controller.dart';
import '../../presentation/screens/profile/notification/screen/notification_screen.dart';
import '../../presentation/screens/profile/transaction/screen/transaction_screen.dart';
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

//====================TransactionScreen ===============

    GetPage(
      name: RoutePath.transaction,
      page: () =>  TransactionScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(TransformationController());
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
      page: () =>  PickUpLocationScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(PickupLocationController());
      }),
    ),



//====================addLocation ===============

    GetPage(
      name: RoutePath.addLocation,
      page: () =>  PickOffScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(PickOffController());
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




//====================DropLocationScreen ===============

    GetPage(
      name: RoutePath.dropOffScreen,
      page: () =>  DropOffScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(DropOffController());
      }),
    ),


//====================DropOffMapScreen ===============

    GetPage(
      name: RoutePath.dropOffMap,
      page: () =>  DropOffMapScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(DropOffMapController());
      }),
    ),




//====================titleDescription ===============

    GetPage(
      name: RoutePath.titleDescription,
      page: () =>  TitleDescriptionScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(TitleDescriptionController());
      }),
    ),



//====================RecommendScreen ===============

    GetPage(
      name: RoutePath.recommendScreen,
      page: () =>  RecommendScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(RecommendController());
      }),
    ),



//====================RecommendScreen ===============

    GetPage(
      name: RoutePath.willPay,
      page: () =>  WillPayScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(WillPayController());
      }),
    ),


//====================RecommendScreen ===============

    GetPage(
      name: RoutePath.detailsOrder,
      page: () => DetailsOrderScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(DetailsOrderController());
      }),
    ),



//====================RecommendScreen ===============

    GetPage(
      name: RoutePath.walletScreen,
      page: () => WalletScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(WalletController());
      }),
    ),


//====================SelectStoreScreen ===============

    GetPage(
      name: RoutePath.selectStore,
      page: () => SelectStoreScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(SelectStoreController());
      }),
    ),


//====================SelectStoreScreen ===============

    GetPage(
      name: RoutePath.shoppingList,
      page: () => ShoppingListScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(ShoppingListController());
      }),
    ),



//====================SelectStoreScreen ===============

    GetPage(
      name: RoutePath.bTitleDescription,
      page: () => BTitleDescriptionScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(BTitleDescriptionController());
      }),
    ),

//====================SelectStoreScreen ===============

    GetPage(
      name: RoutePath.bSelectTimeSlot,
      page: () => BSelectTimeSlotScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(BSelectTimeSlotController());
      }),
    ),


//====================BPickupScreen ===============

    GetPage(
      name: RoutePath.bPickUpScreen,
      page: () => BPickupScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(BPickupController());
      }),
    ),



//====================BPickoffScreen ===============

    GetPage(
      name: RoutePath.bPickOffScreen,
      page: () => BPickoffScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(BPickoffController());
      }),
    ),




//====================BPickupMapScreen ===============

    GetPage(
      name: RoutePath.bPickupMap,
      page: () => BPickupMapScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(BPickupMapController());
      }),
    ),



//====================BDropLocationScreen ===============

    GetPage(
      name: RoutePath.bDropLocation,
      page: () => BDropLocationScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(BDropLocationController());
      }),
    ),


//====================BDropoffScreen ===============

    GetPage(
      name: RoutePath.bDropOffScreen,
      page: () => BDropoffScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(BDropoffController());
      }),
    ),


//====================BDropoffScreen ===============

    GetPage(
      name: RoutePath.bDropOffMap,
      page: () => BDropoffMapScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(BDropoffMapController());
      }),
    ),

//====================BWillPayScreen ===============

    GetPage(
      name: RoutePath.bWillPayScreen,
      page: () => BWillPayScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(BWillPayController());
      }),
    ),



//====================BDetailsOrderScreen ===============

    GetPage(
      name: RoutePath.bDetailsOrderScreen,
      page: () => BDetailsOrderScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(BDetailsOrderController());
      }),
    ),


//====================BWalletScreen ===============

    GetPage(
      name: RoutePath.bWallet,
      page: () => BWalletScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(BWalletController());
      }),
    ),


    //===========================================================================Remove/Recycle=====================================

    GetPage(
      name: RoutePath.rNewPost,
      page: () => RAddNewPostScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(RAddNewPostController());
      }),
    ),


    GetPage(
      name: RoutePath.rSelectTimeSlot,
      page: () => RSelectTimeSlotScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(RSelectTimeSlotController());
      }),
    ),

    GetPage(
      name: RoutePath.rPickUp,
      page: () => RPickUpLocationScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(RPickupLocationController());
      }),
    ),

    GetPage(
      name: RoutePath.rPickOff,
      page: () => RPickOffScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(RPickOffController());
      }),
    ),

    GetPage(
      name: RoutePath.rPickOffMap,
      page: () => RPickupMapScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(RPickupMapController());
      }),
    ),



    GetPage(
      name: RoutePath.rDropLocation,
      page: () => RDropLocationScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(RDropLocationController());
      }),
    ),

    GetPage(
      name: RoutePath.rDropOff,
      page: () => RDropOffScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(RDropOffController());
      }),
    ),

    GetPage(
      name: RoutePath.rDropOffMap,
      page: () => RDropOffMapScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(RDropOffMapController());
      }),
    ),



    GetPage(
      name: RoutePath.rWasteType,
      page: () => WasteTypeScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(WasteTypeController());
      }),
    ),



    GetPage(
      name: RoutePath.rTitleDescription,
      page: () => RTitleDescriptionScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(RTitleDescriptionController());
      }),
    ),

    GetPage(
      name: RoutePath.rWillPay,
      page: () => RWillPayScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(RWillPayController());
      }),
    ),

    GetPage(
      name: RoutePath.rDetails,
      page: () => RDetailsOrderScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(RDetailsOrderController());
      }),
    ),

    GetPage(
      name: RoutePath.rWallet,
      page: () => RWalletScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(RWalletController());
      }),
    ),






    //===========================================================================GiveAway=====================================

    GetPage(
      name: RoutePath.gNewPost,
      page: () => GAddNewPostScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(GAddNewPostController());
      }),
    ),


    GetPage(
      name: RoutePath.gSelectTimeSlot,
      page: () => GSelectTimeSlotScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(GSelectTimeSlotController());
      }),
    ),

    GetPage(
      name: RoutePath.gPickUp,
      page: () => GPickUpLocationScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(GPickupLocationController());
      }),
    ),

    GetPage(
      name: RoutePath.gPickOff,
      page: () => GPickOffScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(GPickOffController());
      }),
    ),

    GetPage(
      name: RoutePath.gPickOffMap,
      page: () => GPickupMapScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(GPickupMapController());
      }),
    ),



    GetPage(
      name: RoutePath.gDropLocation,
      page: () => GDropLocationScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(GDropLocationController());
      }),
    ),

    GetPage(
      name: RoutePath.gDropOff,
      page: () => GDropOffScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(GDropOffController());
      }),
    ),

    GetPage(
      name: RoutePath.gDropOffMap,
      page: () => GDropOffMapScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(GDropOffMapController());
      }),
    ),




    GetPage(
      name: RoutePath.gTitleDescription,
      page: () => GTitleDescriptionScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(GTitleDescriptionController());
      }),
    ),

    GetPage(
      name: RoutePath.gWillPay,
      page: () => GWillPayScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(GWillPayController());
      }),
    ),

    GetPage(
      name: RoutePath.gDetails,
      page: () => GDetailsOrderScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(GDetailsOrderController());
      }),
    ),

    GetPage(
      name: RoutePath.gWallet,
      page: () => GWalletScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(GWalletController());
      }),
    ),




  ];
}
