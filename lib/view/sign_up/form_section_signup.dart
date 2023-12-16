import 'package:flutter/material.dart';
import 'package:registration/resources/strings_manager.dart';

import '../../resources/text_style.dart';

class FormSectionSignUp extends StatelessWidget {
   const FormSectionSignUp({super.key});
 static final TextEditingController emailControllerSignup = TextEditingController();
 static final TextEditingController userNameControllerSignup = TextEditingController();
 static final TextEditingController passwordControllerSignup = TextEditingController();
 static final TextEditingController confirmPasswordControllerSignup = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            //user name
            Container(
              padding: const EdgeInsets.all(8.0),
              decoration: const BoxDecoration(
                  border: Border(
                      bottom:
                          BorderSide(color: Color.fromRGBO(143, 148, 251, 1)))),
              child: TextFormField(
                controller: userNameControllerSignup,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintStyle: TextStyles.textStyleRegular18Grey,
                    hintText: AppStrings.userNameHintText),
              ),
            ),
            //email
            Container(
              padding: const EdgeInsets.all(8.0),
              decoration: const BoxDecoration(
                  border: Border(
                      bottom:
                          BorderSide(color: Color.fromRGBO(143, 148, 251, 1)))),
              child: TextFormField(
                controller: emailControllerSignup,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintStyle: TextStyles.textStyleRegular18Grey,
                    hintText: AppStrings.emailHintText),
              ),
            ),
            //password
            Container(
              padding: const EdgeInsets.all(8.0),
              decoration: const BoxDecoration(
                  border: Border(
                      bottom:
                          BorderSide(color: Color.fromRGBO(143, 148, 251, 1)))),
              child: TextFormField(
                controller: passwordControllerSignup,
                obscureText: true,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintStyle: TextStyles.textStyleRegular18Grey,
                    hintText: AppStrings.password),
              ),
            ),
            //confirm password
            Container(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: confirmPasswordControllerSignup,
                obscureText: true,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: TextStyles.textStyleRegular18Grey,
                  hintText: AppStrings.confirmPassword,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
