import 'package:flutter/material.dart';
import 'package:registration/resources/font_manager.dart';

import '../../resources/assets_manager.dart';
import '../../resources/strings_manager.dart';

class TopSection extends StatelessWidget {
  String? title;

  TopSection({this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned(
          left: 30,
          width: 80,
          height: 200,
          child: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage(ImageAssets.light1),
            )),
          )),
      Positioned(
          left: 140,
          width: 80,
          height: 150,
          child: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage(ImageAssets.light2),
            )),
          )),
      Positioned(
          right: 40,
          top: 80,
          width: 80,
          height: 150,
          child: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage(ImageAssets.clock),
            )),
          )),
      Positioned(
        child: Container(
          margin: const EdgeInsets.only(top: 50),
          child: Center(
            child: Text(
              title!,
              style: const TextStyle(
                  fontSize: FontSize.s40,
                  fontWeight: FontWeightManager.bold,
                  fontFamily: FontConstants.fontFamily,
                  color: Colors.white),
            ),
          ),
        ),
      ),
    ]);
  }
}
