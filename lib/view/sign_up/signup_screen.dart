import 'package:flutter/material.dart';
import 'package:registration/view/sign_up/signup_button_gradient.dart';

import '../../resources/assets_manager.dart';
import '../../resources/strings_manager.dart';
import '../../routing/routes.dart';
import '../sign_in/top_section.dart';
import 'form_section_signup.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Container(
                height: 300,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(ImageAssets.background),
                  fit: BoxFit.fill,
                )),
                child: TopSection(title: AppStrings.signUp),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: const Color.fromRGBO(143, 148, 251, 1)),
                        boxShadow: const [
                          BoxShadow(
                              color: Color.fromRGBO(143, 148, 251, .4),
                              blurRadius: 20.0,
                              offset: Offset(0, 10)),
                        ],
                      ),
                      child: const FormSectionSignUp(),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const SignUpButtonGradient(),
                    const SizedBox(
                      height: 4,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, Routes.signInScreen);

                        },
                        child: const Text(AppStrings.alreadyRegistered,
                            style: TextStyle(
                                color: Color.fromRGBO(143, 148, 251, 1)))),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
