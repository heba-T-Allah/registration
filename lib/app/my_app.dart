import 'package:flutter/material.dart';
import 'package:registration/routing/app-router.dart';

import '../routing/routes.dart';
import '../services/preferences.service.dart';
import '../view/sign_in/signin_screen.dart';

class MyApp extends StatefulWidget {


 MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final bool isLoggedIn;
  final appRouter = AppRouter();
@override
  void initState() {
  isLoggedIn =  PreferencesService.retrieveBoolValueIsLoggedIn();

  print("main is logged in $isLoggedIn");
  super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Demo App',
      debugShowCheckedModeBanner: false,
      initialRoute: isLoggedIn ? Routes.homeScreen : Routes.signInScreen,
      onGenerateRoute: appRouter.generateRoute,
    );
  }

}
