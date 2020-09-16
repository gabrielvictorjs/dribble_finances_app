import 'package:flutter/material.dart';

import '../../theme/app_theme.dart';

class PrimaryButtonWidget extends StatelessWidget {
  final EdgeInsets padding;
  const PrimaryButtonWidget({
    Key key,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: RaisedButton(
        elevation: 0,
        padding: const EdgeInsets.symmetric(vertical: 16),
        color: AppColors.darkBlue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
        ),
        onPressed: () {},
        child: Text(
          'Login',
          style: AppTypography.bodyMedium.copyWith(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
