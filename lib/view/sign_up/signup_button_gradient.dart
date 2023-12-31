import 'package:flutter/material.dart';
import 'package:registration/view/sign_up/signup_functions.dart';

import '../../resources/strings_manager.dart';

class SignUpButtonGradient extends StatelessWidget {
  const SignUpButtonGradient({super.key});

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
          final signUpFunctions = SignUpFunctions(context: context);
          signUpFunctions.signUp();
        },
        child: const Center(
          child: Text(
            AppStrings.signUp,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
