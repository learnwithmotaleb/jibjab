// /utils/app_const/app_const.dart
class AppConstants {
  // ===================== Language =====================
  static const String english = "en";
  static const String arabic = "ar";
  static String language = english;

  // ===================== User ========================
  static String? userID;      // Store user ID after login
  static String? userName;    // Optional: Store user name
  static String? userEmail;   // Optional: Store user email
  static String? token;       // Store user token after login

  // ===================== App Info ====================
  static const String baseUrl = "https://api.yourapp.com";
  static const String appVersion = "1.0.0";
  static const int splashDelaySeconds = 3;

  // ===================== Tokens ======================
  static const String tokenKey = "user_token";

  // ===================== Helpers =====================
  /// Set token
  static void setToken(String userToken) {
    token = userToken;
  }

  /// Clear token (logout)
  static void clearToken() {
    token = null;
    userID = null;
    userName = null;
    userEmail = null;
  }
}
