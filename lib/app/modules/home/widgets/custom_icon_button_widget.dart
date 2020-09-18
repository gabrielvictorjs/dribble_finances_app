import 'package:flutter/material.dart';

import '../../../theme/app_theme.dart';

class CustomIconButtonWidget extends StatelessWidget {
  final Widget icon;
  final VoidCallback onTap;

  const CustomIconButtonWidget({
    Key key,
    @required this.icon,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          highlightColor: Colors.transparent,
          splashColor: AppColors.alternativeBlue,
          child: Padding(
            padding: const EdgeInsets.all(6),
            child: icon,
          ),
        ),
      ),
    );
  }
}
