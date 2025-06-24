import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stratos_cafe/utils/dimensions.dart';
import 'package:stratos_cafe/widgets/small_texts.dart';

class IconAndTextWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color iconColor;

  const IconAndTextWidget({super.key,
    required this.icon,
    required this.text,
    required this.iconColor,});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: iconColor, size: Dimensions.iconsize24,),
        SizedBox(width: 5,),
        SmallTexts(text: text,),

      ],
    );
  }
}
