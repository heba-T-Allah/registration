import 'package:flutter/material.dart';
import 'package:registration/resources/color_manager.dart';

import 'font_manager.dart';

class TextStyles {
  static TextStyle textStyleBold18White = const TextStyle(
      fontSize: FontSize.s18,
      fontWeight: FontWeightManager.bold,
      fontFamily: FontConstants.fontFamily,
      color: Colors.white);
  static TextStyle textStyleRegular18Grey = const TextStyle(
      fontSize: FontSize.s14,
      fontWeight: FontWeightManager.regular,
      fontFamily: FontConstants.fontFamily,
      color: Colors.grey);
}
