import 'package:flutter/material.dart';

import '../../resources/strings_manager.dart';
import '../../routing/routes.dart';
import '../../services/preferences.service.dart';
import '../costom/shared_functions.dart';
import 'form_section_signin.dart';

class SignInFunctions {
  final BuildContext? context;

  SignInFunctions({required this.context});

  void saveUserAndLogin() {
    final sharedFunctions = SharedFunctions(context: context);

    if (FormSectionSignIn.emailControllerSignIn.text.isNotEmpty) {
      if (FormSectionSignIn.passwordControllerSignIn.text.isNotEmpty) {
        _login(FormSectionSignIn.emailControllerSignIn.text,
            FormSectionSignIn.passwordControllerSignIn.text);
      } else {
        sharedFunctions.showInSnackBar("please enter your password.");
      }
    } else {
      sharedFunctions.showInSnackBar("please enter your email.");
    }
  }

  Future<void> _login(String email, String password) async {
    PreferencesService.saveStringValue(AppStrings.emailPref, email);
    PreferencesService.saveStringValue(AppStrings.passwordPref, password);
    PreferencesService.saveBoolValue(true);
    print(PreferencesService.retrieveStringValue(AppStrings.emailPref));
    print(" isloggedin in func ${ await PreferencesService.retrieveBoolValueIsLoggedIn()}");

    print("login Successfully.");
    _clearFields();
    Navigator.pushReplacementNamed(context!, Routes.homeScreen);
  }

  void _clearFields() {
    FormSectionSignIn.emailControllerSignIn.clear();
    FormSectionSignIn.passwordControllerSignIn.clear();
  }
}
