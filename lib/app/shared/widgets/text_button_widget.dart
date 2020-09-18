import 'package:flutter/material.dart';

import '../../theme/app_theme.dart';

class TextButtonWidget extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  final EdgeInsetsGeometry padding;
  final Color textColor, splashColor;

  const TextButtonWidget({
    Key key,
    @required this.onTap,
    @required this.title,
    this.padding,
    this.textColor,
    this.splashColor,
  })  : assert(title != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(26),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          highlightColor: Colors.transparent,
          splashColor: splashColor ?? AppColors.alternativeBlue,
          child: Container(
            padding: padding ?? EdgeInsets.zero,
            child: Text(
              title,
              style: AppTypography.bodySmallMedium.copyWith(
                color: textColor ?? AppColors.dark5,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
