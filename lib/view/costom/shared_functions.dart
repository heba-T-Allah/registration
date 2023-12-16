import 'package:flutter/material.dart';

class SharedFunctions{
  final BuildContext? context;
  const SharedFunctions({required this.context});
  void showInSnackBar(String? value) {
    ScaffoldMessenger.of(context!)
        .showSnackBar(SnackBar(content: Text(value!)));
  }
}