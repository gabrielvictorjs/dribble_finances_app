import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class NotificationBellWidget extends StatelessWidget {
  final bool showIndicator;

  const NotificationBellWidget({
    Key key,
    this.showIndicator = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Icon(EvaIcons.bellOutline, size: 22),
        if (showIndicator)
          Positioned(
            left: 12.5,
            top: 2,
            child: _buildIndicator(),
          ),
      ],
    );
  }

  Widget _buildIndicator() {
    return Container(
      height: 7,
      width: 7,
      decoration: BoxDecoration(
        color: Colors.red,
        shape: BoxShape.circle,
      ),
    );
  }
}
