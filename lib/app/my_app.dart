import 'package:flutter/material.dart';
import 'package:registration/routing/app-router.dart';

import '../routing/routes.dart';
import '../services/preferences.service.dart';
import '../view/sign_in/signin_screen.dart';

class MyApp extends StatefulWidget {
 final bool? isLoggedIn;
 final appRouter = AppRouter();

 MyApp({super.key,required this.isLoggedIn});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Demo App',
      debugShowCheckedModeBanner: false,
      initialRoute: widget.isLoggedIn! ? Routes.homeScreen : Routes.signInScreen,
      onGenerateRoute: widget.appRouter.generateRoute,
    );
  }
  //
  // Future<bool?> navigateUser() async {
  //   bool? isLoggedIn = await PreferencesService.retrieveBoolValueIsLoggedIn();
  //   print("isLoggedIn $isLoggedIn");
  //
  //   if (isLoggedIn != null) {
  //     if (isLoggedIn) {
  //       setState(() {
  //         status = true;
  //       });
  //       // Navigator.pushReplacementNamed(context, Routes.homeScreen);
  //       return isLoggedIn;
  //     } else {
  //       status = false;
  //       return false;
  //     }
  //   } else {
  //     status = false;
  //     return false;
  //   }
  // }
}
