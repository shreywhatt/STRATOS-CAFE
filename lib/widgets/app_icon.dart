import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:stratos_cafe/utils/dimensions.dart';

class AppIcon extends StatelessWidget {
  final IconData icon;
  final Color backgroundColor;
  final iconColor;
  final double size;

  const AppIcon({super.key,
      required this.icon,
      this.backgroundColor = const Color(0xFFfcf4e4),
      this.iconColor = const Color(0xFF756d54),
      this.size = 40,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(size/2),
          color: backgroundColor
        ),
        child: Icon(icon,
        color: iconColor,
        size: Dimensions.iconsize16,),
    );
  }
}
