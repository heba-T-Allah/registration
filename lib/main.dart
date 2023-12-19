import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:registration/services/preferences.service.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app/my_app.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();

  try {
    PreferencesService.prefs = await SharedPreferences.getInstance();
    if (PreferencesService.prefs != null) {
      print("preferences init successfully ");
    }
  } catch (e) {
    print("can't init preferences ${e} ");
  }
  runApp(MyApp());
}
