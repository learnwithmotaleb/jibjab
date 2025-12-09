import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../helper/local_db/local_db.dart';
import '../../../utils/app_const/app_const.dart';
import '../arabic/arabic.dart';
import '../eng/eng.dart';

class Language extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    "en_US": english,
    "ar_SA": arabic,
  };
}

class LanguageController extends GetxController {
  static LanguageController get to => Get.find();

  RxBool isEnglish = true.obs;

  // Load saved language
  Future<void> loadLanguage() async {
    isEnglish.value =
        await SharePrefsHelper.getBool(AppConstants.language) ?? true;
    _updateLocale();
  }

  // Switch language
  Future<void> switchLanguage(bool englishSelected) async {
    isEnglish.value = englishSelected;
    _updateLocale();
    await SharePrefsHelper.setBool(AppConstants.language, englishSelected);
  }

  void _updateLocale() {
    if (isEnglish.value) {
      Get.updateLocale(const Locale("en", "US"));
    } else {
      Get.updateLocale(const Locale("ar", "SA"));
    }
  }

}
