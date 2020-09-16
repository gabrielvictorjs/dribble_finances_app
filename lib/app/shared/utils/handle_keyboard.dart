import 'package:flutter/material.dart';

class HandleKeyboard {
  static void hide(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  static void addFocus(BuildContext context, FocusNode newFocus) {
    FocusScope.of(context).requestFocus(newFocus);
  }
}
