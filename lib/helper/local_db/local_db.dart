import 'package:shared_preferences/shared_preferences.dart';

class SharePrefsHelper {

  //=============================Save Languages=================
  static Future<void> setBool(String key, bool value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(key, value);
  }



  //=============================Load Languages=================
  static Future<bool?> getBool(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(key);
  }



}
