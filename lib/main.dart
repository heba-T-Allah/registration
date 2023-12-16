import 'package:flutter/material.dart';

import 'app/my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
//   try {
//     PreferencesService.prefs = await SharedPreferences.getInstance();
// if(PreferencesService.prefs != null){
//   print("preferences init successfully ");
// }
//   } catch (e) {
//     print("can't init preferences ${e} ");
//
//   }
  runApp(MyApp());
}
