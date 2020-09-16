import 'package:flutter/material.dart';

part 'app_colors.dart';
part 'app_icons.dart';
part 'app_typography.dart';

class AppTheme {
  static final ThemeData config = ThemeData(
    primaryColor: AppColors.darkBlue,
    accentColor: AppColors.darkBlue,
    scaffoldBackgroundColor: AppColors.background,
    fontFamily: 'Poppins',
  );
}
