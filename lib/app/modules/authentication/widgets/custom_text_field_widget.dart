import 'package:flutter/material.dart';

import '../../../theme/app_theme.dart';

class CustomTextFieldWidget extends StatelessWidget {
  final String labelText;
  final IconData inputIcon;
  final bool obscureText;
  final String hintText;
  final Widget suffixIcon;

  CustomTextFieldWidget({
    Key key,
    @required this.labelText,
    this.inputIcon,
    this.obscureText,
    this.hintText,
    this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 26,
        vertical: 13,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: AppTheme.boxShadow,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            labelText,
            style: AppTypography.bodyMedium.copyWith(
              color: AppColors.dark5.withOpacity(.7),
            ),
          ),
          _buildInputField(),
        ],
      ),
    );
  }

  Widget _buildInputField() {
    return Row(
      children: [
        if (inputIcon != null)
          Padding(
            padding: const EdgeInsets.only(
              top: 2,
              right: 12,
            ),
            child: Icon(
              inputIcon,
              color: AppColors.dark3,
            ),
          ),
        Expanded(
          child: TextField(
            style: AppTypography.bodyMedium.copyWith(
              color: AppColors.dark3,
            ),
            obscureText: obscureText ?? false,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: AppTypography.bodyMedium.copyWith(
                color: AppColors.light4,
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 5),
              isDense: true,
              border: InputBorder.none,
            ),
          ),
        ),
        suffixIcon ?? SizedBox.shrink(),
      ],
    );
  }
}
