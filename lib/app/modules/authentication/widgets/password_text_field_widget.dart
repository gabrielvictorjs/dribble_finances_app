import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

import 'custom_text_field_widget.dart';
import '../../../theme/app_theme.dart';

class PasswordTextFieldWidget extends StatefulWidget {
  @override
  _PasswordTextFieldWidgetState createState() =>
      _PasswordTextFieldWidgetState();
}

class _PasswordTextFieldWidgetState extends State<PasswordTextFieldWidget> {
  bool _obscureText = true;

  void _changeObscureText() {
    setState(() => _obscureText = !_obscureText);
  }

  @override
  Widget build(BuildContext context) {
    return CustomTextFieldWidget(
      labelText: 'Password',
      hintText: 'Type your password',
      inputIcon: EvaIcons.lockOutline,
      obscureText: _obscureText,
      suffixIcon: InkWell(
        onTap: _changeObscureText,
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 200),
          child: _obscureText
              ? _buildEyeIcon(EvaIcons.eyeOutline)
              : _buildEyeIcon(EvaIcons.eyeOffOutline),
        ),
      ),
    );
  }

  Widget _buildEyeIcon(IconData icon) {
    return Container(
      key: UniqueKey(),
      child: Icon(icon, color: AppColors.dark3),
    );
  }
}
