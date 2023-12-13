import 'package:flutter/material.dart';
import 'package:registration/routing/app-router.dart';

import '../routing/routes.dart';
import '../view/sign_in/signin_screen.dart';

class MyApp extends StatelessWidget {
  //named constructor
  MyApp._internal();

  final appRouter = AppRouter();

  //create one instance
  static final _instance = MyApp._internal(); //singlton

  //factory returns the same object every time
  factory MyApp() => _instance; //factory
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo App',
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.signInScreen,
      onGenerateRoute: appRouter.generateRoute,
    );
  }
}
