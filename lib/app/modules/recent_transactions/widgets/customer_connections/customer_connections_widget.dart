import 'dart:math';

import 'package:flutter/material.dart';

import '../../../../theme/app_theme.dart';
import 'circles_connection_painter.dart';

class CustomerConnectionsWidget extends StatelessWidget {
  final double size;
  final String customerImageUrl;
  final List<String> connectionsImages;

  const CustomerConnectionsWidget({
    Key key,
    @required this.size,
    @required this.customerImageUrl,
    @required this.connectionsImages,
  }) : super(key: key);

  Offset _calculateImagePosition(int index) {
    final radius = size / 2 * .8;
    final positionAngle =
        (2 * pi * index - (pi / 2)) / connectionsImages.length;

    final coordinateX = radius * cos(positionAngle);
    final coordinateY = radius * sin(positionAngle);
    return Offset(coordinateX, coordinateY);
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(size, size),
      painter: CirclesConnectionsPainter(),
      child: Container(
        height: size,
        width: size,
        child: Stack(
          alignment: Alignment.center,
          children: [
            CircleAvatar(
              radius: size / 2 * .28,
              backgroundImage: NetworkImage(customerImageUrl),
              backgroundColor: Colors.white,
            ),
            ...List.generate(
              connectionsImages.length,
              _buildConnectionImage,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildConnectionImage(int index) {
    return Transform.translate(
      offset: _calculateImagePosition(index),
      child: Container(
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: AppTheme.boxShadow,
        ),
        child: CircleAvatar(
          radius: size / 2 * .17,
          backgroundImage: NetworkImage(connectionsImages[index]),
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
