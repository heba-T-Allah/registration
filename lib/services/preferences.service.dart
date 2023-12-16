import 'package:registration/resources/strings_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class PreferencesService {
  static SharedPreferences? _prefs;

  static _getSharedPreferences() async {
    try {
      _prefs = await SharedPreferences.getInstance();
      if (_prefs != null) {
        print("preferences init successfully ");
      }
    } catch (e) {
      print("can't init preferences ${e} ");
    }
  }

  static saveStringValue(String key, String value) async {
    _getSharedPreferences();
    _prefs?.setString(key, value);
  }

  static Future<String?> retrieveStringValue(String key) async {
    _getSharedPreferences();
    String? value = _prefs?.getString(key);
    print(value);
    return value;
  }
//islogged in
  static saveBoolValue( bool value) async {
    _getSharedPreferences();
    _prefs?.setBool(AppStrings.isLoggedInPref, value);
  }

 static Future<bool?> retrieveBoolValue(String key) async {
   _getSharedPreferences();
    bool? value = _prefs?.getBool(key);
    print(value);
    return value;
  }
}
