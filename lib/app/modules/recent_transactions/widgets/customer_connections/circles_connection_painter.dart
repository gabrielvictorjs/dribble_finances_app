import 'package:flutter/material.dart';

import '../../../../theme/app_theme.dart';

class CircleConfig {
  final Paint paint;
  final double radius;

  CircleConfig({
    @required double radius,
    @required Color color,
    double strokeWidth,
  })  : this.paint = Paint()
          ..strokeCap = StrokeCap.round
          ..style = PaintingStyle.stroke
          ..strokeWidth = strokeWidth
          ..color = color,
        this.radius = radius;
}

class CirclesConnectionsPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2;

    final circlesConfigs = [
      CircleConfig(
        radius: radius * .78,
        color: AppColors.alternativeBlue,
        strokeWidth: size.height * .006,
      ),
      CircleConfig(
        radius: radius * .56,
        color: Colors.white,
        strokeWidth: size.height * .006,
      ),
      CircleConfig(
        radius: radius * .5,
        color: AppColors.lightBlue,
        strokeWidth: size.height * .05,
      ),
      CircleConfig(
        radius: radius * .32,
        color: AppColors.darkBlue,
        strokeWidth: size.height * .01,
      ),
    ];

    circlesConfigs.forEach(
      (circle) => canvas.drawCircle(
        center,
        circle.radius,
        circle.paint,
      ),
    );
  }

  @override
  bool shouldRepaint(CustomPainter _) => false;
}
