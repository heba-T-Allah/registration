import 'package:flutter/material.dart';
import 'package:registration/resources/strings_manager.dart';

import '../../resources/text_style.dart';

class FormSectionSignIn extends StatelessWidget {
  const FormSectionSignIn({super.key});
  static final TextEditingController emailControllerSignIn = TextEditingController();
  static final TextEditingController passwordControllerSignIn = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Container(
              padding: const EdgeInsets.all(8.0),
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          color: Color.fromRGBO(
                              143, 148, 251, 1)))),
              child: TextFormField(
                controller: emailControllerSignIn,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintStyle:TextStyles.textStyleRegular18Grey,
                    hintText: AppStrings.emailHintText),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: passwordControllerSignIn,
                obscureText: true,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: TextStyles.textStyleRegular18Grey,
                  hintText:AppStrings.password,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
