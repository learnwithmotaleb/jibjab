import 'package:get/get.dart';
import '../../../../../global/language/controller/language_controller.dart';

class LanguageSettingController extends GetxController {
  static LanguageSettingController get to => Get.find();

  // Selected language
  var selectedLanguage = ''.obs;

  final lc = LanguageController.to;

  @override
  void onInit() {
    super.onInit();
    // Initialize selected language based on saved value
    selectedLanguage.value = lc.isEnglish.value ? 'en' : 'ar';
  }

  // Change language method
  void changeLanguage(String value) {
    selectedLanguage.value = value;
    if (value == 'en') {
      lc.switchLanguage(true);
    } else {
      lc.switchLanguage(false);
    }
  }
}
