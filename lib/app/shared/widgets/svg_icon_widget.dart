import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SvgIconWidget extends StatelessWidget {
  final String path;
  final double size;
  final Color color;

  const SvgIconWidget(this.path, {Key key, this.size, this.color})
      : assert(path != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      path,
      color: color,
      height: size,
      width: size,
    );
  }
}
