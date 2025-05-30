// Package imports:
import 'package:shared_preferences/shared_preferences.dart';

class UserDatabase {
  static const _userGroupKey = 'user_group';
  static const _idKey = 'id';

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

  static Future<void> saveUserId(String userId) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_idKey, userId);
  }

  static Future<String?> getUserId() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_idKey);
  }

  static Future<void> clearUserId() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_idKey);
  }

  static Future<void> clearAllUserData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_userGroupKey);
    await prefs.remove(_idKey);
  }
}
