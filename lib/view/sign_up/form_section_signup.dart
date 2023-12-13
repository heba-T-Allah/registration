import 'package:flutter/material.dart';
import 'package:registration/resources/strings_manager.dart';

import '../../resources/text_style.dart';

class FormSectionSignUp extends StatelessWidget {
  const FormSectionSignUp({super.key});

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
                      bottom:
                          BorderSide(color: Color.fromRGBO(143, 148, 251, 1)))),
              child: TextFormField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintStyle: TextStyles.textStyleRegular18Grey,
                    hintText: AppStrings.userNameHintText),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              decoration: const BoxDecoration(
                  border: Border(
                      bottom:
                          BorderSide(color: Color.fromRGBO(143, 148, 251, 1)))),
              child: TextFormField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintStyle: TextStyles.textStyleRegular18Grey,
                    hintText: AppStrings.emailHintText),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              decoration: const BoxDecoration(
                  border: Border(
                      bottom:
                          BorderSide(color: Color.fromRGBO(143, 148, 251, 1)))),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintStyle: TextStyles.textStyleRegular18Grey,
                    hintText: AppStrings.password),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
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
