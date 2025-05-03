import 'package:shared_preferences/shared_preferences.dart';

class UserDatabase {
  static const _userGroupKey = 'user_group';

  static Future<void> saveUserGroup(String userGroup) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_userGroupKey, userGroup);
  }

  static Future<String?> getUserGroup() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_userGroupKey);
  }

  static Future<void> clearUserGroup() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_userGroupKey);
  }

  static Future<void> clearAllUserData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_userGroupKey);
  }
}
