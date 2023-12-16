
import 'package:flutter/material.dart';
import 'package:registration/routing/routes.dart';
import 'package:registration/view/home/home_screen.dart';
import 'package:registration/view/sign_in/signin_screen.dart';
import 'package:registration/view/sign_up/signup_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.signInScreen:
        return MaterialPageRoute(
          builder: (_) => const SignInScreen(),
        );
      case Routes.signUpScreen:
        return MaterialPageRoute(
          builder: (_) => const SignUpScreen(),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      default:
        return undefinedRoute();
    }
  }

  static Route<dynamic> undefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text("No route defined "),
        ),
        body: const Center(
          child: Text("No route defined"),
        ),
      ),
    );
  }
}
