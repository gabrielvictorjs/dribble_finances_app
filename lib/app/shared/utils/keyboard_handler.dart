import 'package:flutter/material.dart';

class KeyboardHandler {
  static void hide(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }
}
