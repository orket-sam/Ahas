import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences {
  static SharedPreferences? _prefs;
  // Username key
  static String userKey = 'userKey';
  static String counterKey = 'counter';

  static Future init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static Future setUserName(String name) async {
    _prefs?.setString(userKey, name);
  }

  static Future setCounterValue(int count) async {
    _prefs?.setInt(counterKey, count);
  }

  static Future resetCounterValue() async {
    _prefs?.setInt(counterKey, 0);
  }

  static int? getCounterValue() => _prefs!.getInt(counterKey);
}
