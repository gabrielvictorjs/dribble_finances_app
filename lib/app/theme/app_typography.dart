part of 'app_theme.dart';

class AppTypography {
  // Heading
  static final heading1 = TextStyle(
    letterSpacing: -0.4,
    fontWeight: FontWeight.bold,
    fontSize: 40,
  );
  static final heading2 = heading1.copyWith(
    letterSpacing: -0.36,
    fontSize: 36,
  );
  static final heading3 = heading1.copyWith(
    letterSpacing: -0.32,
    fontSize: 32,
  );
  static final heading4 = heading1.copyWith(
    letterSpacing: -0.28,
    fontSize: 28,
  );
  static final heading5 = heading1.copyWith(
    letterSpacing: -0.24,
    fontSize: 24,
  );
  static final headingBold6 = heading1.copyWith(
    letterSpacing: -0.20,
    fontSize: 20,
  );
  static final headingSemiBold6 = headingBold6.copyWith(
    fontWeight: FontWeight.w600,
  );

  // Body large
  static final bodyLargeRegular = TextStyle(fontSize: 18);
  static final bodyLargeMedium = bodyLargeRegular.copyWith(
    letterSpacing: -0.18,
    fontWeight: FontWeight.w500,
  );
  static final bodyLargeSemiBold = bodyLargeMedium.copyWith(
    fontWeight: FontWeight.w600,
  );
  static final bodyLargeBold = bodyLargeMedium.copyWith(
    fontWeight: FontWeight.bold,
  );

  // Body
  static final bodyRegular = TextStyle(fontSize: 16);
  static final bodyMedium = bodyRegular.copyWith(
    letterSpacing: -0.16,
    fontWeight: FontWeight.w500,
  );
  static final bodySemiBold = bodyMedium.copyWith(
    fontWeight: FontWeight.w600,
  );
  static final bodyBold = bodyMedium.copyWith(
    fontWeight: FontWeight.bold,
  );

  // Body small
  static final bodySmallRegular = TextStyle(fontSize: 14);
  static final bodySmallMedium = bodySmallRegular.copyWith(
    letterSpacing: -0.14,
    fontWeight: FontWeight.w500,
  );
  static final bodySmallSemiBold = bodySmallMedium.copyWith(
    fontWeight: FontWeight.w600,
  );
  static final bodySmallBold = bodySmallMedium.copyWith(
    fontWeight: FontWeight.bold,
  );

  // Caption
  static final caption = TextStyle(fontSize: 12);

  // Tagline
  static final tagline = TextStyle(fontSize: 10);
}
