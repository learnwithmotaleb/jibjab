import 'package:get/get.dart';
import 'package:jibjab/utils/static_strings/static_strings.dart';
import 'package:flutter/material.dart';

class ProfileController extends GetxController {
  final menuItems = <ProfileMenuModel>[].obs;

  @override
  void onInit() {
    loadMenu();
    super.onInit();
  }

  void loadMenu() {
    menuItems.value = [
      ProfileMenuModel(Icons.settings, AppStrings.accountSetting),
      ProfileMenuModel(Icons.post_add, AppStrings.myPost),
      ProfileMenuModel(Icons.timer, AppStrings.myAccepted),
      ProfileMenuModel(Icons.public, AppStrings.publicProfileInfo),
      ProfileMenuModel(Icons.history, AppStrings.history),
      ProfileMenuModel(Icons.notifications, AppStrings.notification),
      ProfileMenuModel(Icons.language, AppStrings.language),
      ProfileMenuModel(Icons.question_mark_rounded, AppStrings.faq),
      ProfileMenuModel(Icons.contact_page_rounded, AppStrings.contactUs),
      ProfileMenuModel(Icons.library_books_sharp, AppStrings.termsAndCondition),
      ProfileMenuModel(Icons.privacy_tip_outlined, AppStrings.privacyPolicy),
      ProfileMenuModel(Icons.logout, AppStrings.logOut),
    ];
  }
}

class ProfileMenuModel {
  final IconData icon;
  final String title;

  ProfileMenuModel(this.icon, this.title);
}
