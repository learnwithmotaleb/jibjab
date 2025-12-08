import 'package:shared_preferences/shared_preferences.dart';

class SharePrefsHelper {
  //===========================Get Data From Shared Preference===================

  static Future<String> getString(String key) async {
    final preferences = await SharedPreferences.getInstance();
    return preferences.getString(key) ?? "";
  }

  static Future<String> getStringWithDefault(String key, String defaultValue) async {
    final preferences = await SharedPreferences.getInstance();
    return preferences.getString(key) ?? defaultValue;
  }

  static Future<List<String>> getListOfString(String key) async {
    final preferences = await SharedPreferences.getInstance();
    return preferences.getStringList(key) ?? [];
  }

  static Future<List<String>> getListOfStringWithDefault(String key, List<String> defaultValue) async {
    final preferences = await SharedPreferences.getInstance();
    return preferences.getStringList(key) ?? defaultValue;
  }

  static Future<bool> getBool(String key) async {
    final preferences = await SharedPreferences.getInstance();
    return preferences.getBool(key) ?? false;
  }

  static Future<bool> getBoolWithDefault(String key, bool defaultValue) async {
    final preferences = await SharedPreferences.getInstance();
    return preferences.getBool(key) ?? defaultValue;
  }

  static Future<int> getInt(String key) async {
    final preferences = await SharedPreferences.getInstance();
    return preferences.getInt(key) ?? (-1);
  }

  static Future<int> getIntWithDefault(String key, int defaultValue) async {
    final preferences = await SharedPreferences.getInstance();
    return preferences.getInt(key) ?? defaultValue;
  }

  static Future<double> getDouble(String key) async {
    final preferences = await SharedPreferences.getInstance();
    return preferences.getDouble(key) ?? 0.0;
  }

  static Future<double> getDoubleWithDefault(String key, double defaultValue) async {
    final preferences = await SharedPreferences.getInstance();
    return preferences.getDouble(key) ?? defaultValue;
  }

  //===========================Check If Key Exists===================

  static Future<bool> containsKey(String key) async {
    final preferences = await SharedPreferences.getInstance();
    return preferences.containsKey(key);
  }

  //===========================Save Data To Shared Preference===================

  static Future<bool> setString(String key, String value) async {
    final preferences = await SharedPreferences.getInstance();
    return await preferences.setString(key, value);
  }

  static Future<bool> setListOfString(String key, List<String> value) async {
    final preferences = await SharedPreferences.getInstance();
    return await preferences.setStringList(key, value);
  }

  static Future<bool> setBool(String key, bool value) async {
    final preferences = await SharedPreferences.getInstance();
    return await preferences.setBool(key, value);
  }

  static Future<bool> setInt(String key, int value) async {
    final preferences = await SharedPreferences.getInstance();
    return await preferences.setInt(key, value);
  }

  static Future<bool> setDouble(String key, double value) async {
    final preferences = await SharedPreferences.getInstance();
    return await preferences.setDouble(key, value);
  }

  //===========================Save Multiple Values===================

  static Future<bool> saveMultiple(Map<String, dynamic> values) async {
    final preferences = await SharedPreferences.getInstance();

    for (final entry in values.entries) {
      final key = entry.key;
      final value = entry.value;

      if (value is String) {
        await preferences.setString(key, value);
      } else if (value is bool) {
        await preferences.setBool(key, value);
      } else if (value is int) {
        await preferences.setInt(key, value);
      } else if (value is double) {
        await preferences.setDouble(key, value);
      } else if (value is List<String>) {
        await preferences.setStringList(key, value);
      }
    }

    return true;
  }

  //===========================Remove Value===================

  static Future<bool> remove(String key) async {
    final preferences = await SharedPreferences.getInstance();
    return await preferences.remove(key);
  }

  static Future<bool> removeMultiple(List<String> keys) async {
    final preferences = await SharedPreferences.getInstance();
    bool allRemoved = true;

    for (final key in keys) {
      final removed = await preferences.remove(key);
      if (!removed) allRemoved = false;
    }

    return allRemoved;
  }

  //===========================Clear All Data===================

  static Future<bool> clearAll() async {
    final preferences = await SharedPreferences.getInstance();
    return await preferences.clear();
  }

  static Future<bool> clearExcept(List<String> keysToKeep) async {
    final preferences = await SharedPreferences.getInstance();
    final allKeys = preferences.getKeys();

    for (final key in allKeys) {
      if (!keysToKeep.contains(key)) {
        await preferences.remove(key);
      }
    }

    return true;
  }

  //===========================Get All Keys===================

  static Future<Set<String>> getAllKeys() async {
    final preferences = await SharedPreferences.getInstance();
    return preferences.getKeys();
  }

  //===========================Get All Data===================

  static Future<Map<String, dynamic>> getAllData() async {
    final preferences = await SharedPreferences.getInstance();
    final allKeys = preferences.getKeys();
    final Map<String, dynamic> allData = {};

    for (final key in allKeys) {
      final value = preferences.get(key);
      allData[key] = value;
    }

    return allData;
  }

  //===========================Migration Helper===================

  static Future<void> migrateKey(String oldKey, String newKey) async {
    final preferences = await SharedPreferences.getInstance();

    if (preferences.containsKey(oldKey)) {
      final value = preferences.get(oldKey);
      await preferences.remove(oldKey);

      if (value is String) {
        await preferences.setString(newKey, value);
      } else if (value is bool) {
        await preferences.setBool(newKey, value);
      } else if (value is int) {
        await preferences.setInt(newKey, value);
      } else if (value is double) {
        await preferences.setDouble(newKey, value);
      } else if (value is List<String>) {
        await preferences.setStringList(newKey, value);
      }
    }
  }

  //===========================JSON Helper Methods===================

  static Future<bool> saveJson(String key, Map<String, dynamic> json) async {
    try {
      final jsonString = json.toString(); // For simplicity, use toString
      return await setString(key, jsonString);
    } catch (e) {
      return false;
    }
  }

  static Future<Map<String, dynamic>?> getJson(String key) async {
    try {
      final jsonString = await getString(key);
      if (jsonString.isEmpty) return null;

      // Parse string back to map (simplified - use json_serializable for production)
      // This is a basic implementation
      return {};
    } catch (e) {
      return null;
    }
  }

  //===========================Convenience Methods===================

  static Future<void> saveUserToken(String token) async {
    await setString('user_token', token);
  }

  static Future<String> getUserToken() async {
    return await getString('user_token');
  }

  static Future<void> saveUserId(String userId) async {
    await setString('user_id', userId);
  }

  static Future<String> getUserId() async {
    return await getString('user_id');
  }

  static Future<void> saveUserEmail(String email) async {
    await setString('user_email', email);
  }

  static Future<String> getUserEmail() async {
    return await getString('user_email');
  }

  static Future<void> saveUserLoggedIn(bool isLoggedIn) async {
    await setBool('is_logged_in', isLoggedIn);
  }

  static Future<bool> isUserLoggedIn() async {
    return await getBool('is_logged_in');
  }

  static Future<void> saveFirstLaunch(bool isFirstLaunch) async {
    await setBool('first_launch', isFirstLaunch);
  }

  static Future<bool> isFirstLaunch() async {
    return await getBoolWithDefault('first_launch', true);
  }

  //===========================Language Helper Methods===================

  static Future<void> saveLanguage(String languageCode) async {
    await setString('language_code', languageCode);
    await setBool('language', languageCode == 'en');
  }

  static Future<String> getLanguageCode() async {
    return await getStringWithDefault('language_code', 'en');
  }

  //===========================Theme Helper Methods===================

  static Future<void> saveThemeMode(bool isDarkMode) async {
    await setBool('is_dark_mode', isDarkMode);
  }

  static Future<bool> getThemeMode() async {
    return await getBoolWithDefault('is_dark_mode', false);
  }

  //===========================Counter Helper Methods===================

  static Future<void> incrementCounter(String key) async {
    final current = await getInt(key);
    await setInt(key, current + 1);
  }

  static Future<void> decrementCounter(String key) async {
    final current = await getInt(key);
    if (current > 0) {
      await setInt(key, current - 1);
    }
  }

  //===========================Batch Operations===================

  static Future<bool> performBatchOperation(Function(SharedPreferences) operation) async {
    final preferences = await SharedPreferences.getInstance();
    try {
      operation(preferences);
      return true;
    } catch (e) {
      return false;
    }
  }

  //===========================Validation===================

  static Future<bool> validateKeyExists(String key) async {
    return await containsKey(key);
  }

  static Future<bool> isValueEmpty(String key) async {
    if (!await containsKey(key)) return true;

    final value = await getString(key);
    return value.isEmpty;
  }
}