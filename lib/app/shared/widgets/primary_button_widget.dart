import 'package:flutter/material.dart';

import '../../theme/app_theme.dart';

class PrimaryButtonWidget extends StatelessWidget {
  final String title;
  final EdgeInsets padding;
  final VoidCallback onTap;
  final bool busy;

  const PrimaryButtonWidget({
    Key key,
    this.padding,
    this.onTap,
    this.busy = false,
    @required this.title,
  })  : assert(title != null),
        super(key: key);

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
        onPressed: onTap,
        child: _buildButtonChild(),
      ),
    );
  }

  Widget _buildButtonChild() {
    if (busy) {
      return SizedBox(
        width: 24,
        height: 24,
        child: CircularProgressIndicator(
          strokeWidth: 2,
          valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
        ),
      );
    }

    return Text(
      title,
      style: AppTypography.bodyMedium.copyWith(
        color: Colors.white,
      ),
    );
  }
}
