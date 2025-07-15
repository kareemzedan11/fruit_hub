import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsSingleton {
  static SharedPrefsSingleton? _instance;
  static SharedPreferences? _prefs;

  SharedPrefsSingleton._internal();

  static Future<SharedPrefsSingleton> getInstance() async {
    if (_instance == null) {
      _instance = SharedPrefsSingleton._internal();
      _prefs = await SharedPreferences.getInstance();
    }
    return _instance!;
  }

  // Setters
  static Future<bool> setString(String key, String value) async {
    return await _prefs!.setString(key, value);
  }

  static Future<bool> setBool(String key, bool value) async {
    return await _prefs!.setBool(key, value);
  }

  static Future<bool> setInt(String key, int value) async {
    return await _prefs!.setInt(key, value);
  }

 static  Future<bool> setDouble(String key, double value) async {
    return await _prefs!.setDouble(key, value);
  }

  // Getters
 static String? getString(String key) => _prefs!.getString(key);
 static bool? getBool(String key) => _prefs!.getBool(key);
  static int? getInt(String key) => _prefs!.getInt(key);
 static double? getDouble(String key) => _prefs!.getDouble(key);

  // Remove key
 static Future<bool> remove(String key) async {
    return await _prefs!.remove(key);
  }

  // Clear all
 static Future<bool> clear() async {
    return await _prefs!.clear();
  }
}
