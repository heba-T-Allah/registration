import 'package:flutter/material.dart';

import '../../resources/strings_manager.dart';
import '../../routing/routes.dart';

class LoginButtonGradient extends StatelessWidget {
  const LoginButtonGradient({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: const LinearGradient(colors: [
            Color.fromRGBO(143, 148, 251, 1),
            Color.fromRGBO(143, 148, 251, .6),
          ])),
      child: MaterialButton(
        onPressed: () {
          Navigator.pushReplacementNamed(context, Routes.homeScreen);

        },
        child: const Center(
          child: Text(
           AppStrings.signIn,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
