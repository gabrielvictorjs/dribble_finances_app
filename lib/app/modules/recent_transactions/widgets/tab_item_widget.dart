import 'package:flutter/material.dart';

import '../../../theme/app_theme.dart';

class TabItemWidget extends StatelessWidget {
  final String title;
  final bool isSelected;
  final VoidCallback onTap;

  const TabItemWidget({
    Key key,
    @required this.title,
    this.onTap,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(
          horizontal: 23,
        ),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.darkBlue : Colors.white,
          borderRadius: BorderRadius.circular(23),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 1),
              blurRadius: 25,
              spreadRadius: -5,
              color: AppColors.darkBlue.withOpacity(.3),
            ),
          ],
        ),
        child: Text(
          title,
          style: AppTypography.caption.copyWith(
            fontWeight: FontWeight.w500,
            color: isSelected ? Colors.white : AppColors.dark5,
          ),
        ),
      ),
    );
  }
}
