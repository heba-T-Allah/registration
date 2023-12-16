import 'package:flutter/material.dart';
import 'package:registration/resources/strings_manager.dart';
import 'package:registration/view/costom/shared_functions.dart';
import 'package:registration/view/sign_up/form_section_signup.dart';

import '../../routing/routes.dart';
import '../../services/preferences.service.dart';

class SignUpFunctions {
  final BuildContext? context;

  SignUpFunctions({required this.context});

  void signUp() {
    final sharedFunctions = SharedFunctions(context: context);

    if (FormSectionSignUp.emailControllerSignup.text.isNotEmpty) {
      if (FormSectionSignUp.userNameControllerSignup.text.isNotEmpty) {
        if (FormSectionSignUp.passwordControllerSignup.text.isNotEmpty) {
          if (FormSectionSignUp
              .confirmPasswordControllerSignup.text.isNotEmpty) {
            if (FormSectionSignUp.passwordControllerSignup.text ==
                FormSectionSignUp.confirmPasswordControllerSignup.text) {
              // _insertUser(emailController.text, userNameController.text,
              //     passwordController.text);
              saveUser(
                  FormSectionSignUp.userNameControllerSignup.text,
                  FormSectionSignUp.emailControllerSignup.text,
                  FormSectionSignUp.passwordControllerSignup.text);
              print("sign up Successfully========================");
              Navigator.pushReplacementNamed(context!, Routes.signInScreen);
            } else {
              sharedFunctions.showInSnackBar("Password mismatch.");
            }
          } else {
            sharedFunctions.showInSnackBar("please confirm your password.");
          }
        } else {
          sharedFunctions.showInSnackBar("please enter your password.");
        }
      } else {
        sharedFunctions.showInSnackBar("please enter your user name.");
      }
    } else {
      sharedFunctions.showInSnackBar("please enter your email.");
    }
  }

  void saveUser(String userName, String email, String password) {
    PreferencesService.saveStringValue(AppStrings.userNamePref, userName);
    PreferencesService.saveStringValue(AppStrings.emailPref, email);
    PreferencesService.saveStringValue(AppStrings.passwordPref, password);
    PreferencesService.saveBoolValue(false);

    print(PreferencesService.retrieveStringValue(AppStrings.userNamePref).toString());
  }
}
