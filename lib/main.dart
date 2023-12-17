import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:registration/services/preferences.service.dart';

import 'app/my_app.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  // WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  // FlutterNativeSplash.remove();
  bool? isLoggedIn = await PreferencesService.retrieveBoolValueIsLoggedIn()??false;

  print("main is logged in $isLoggedIn");
  runApp(MyApp(isLoggedIn: isLoggedIn));
}
