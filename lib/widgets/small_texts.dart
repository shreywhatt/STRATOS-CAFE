import 'package:flutter/cupertino.dart';

class SmallTexts extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  double height;

  SmallTexts({super.key,
    this.color = const Color(0xFF89dad0),
    required this.text,
    this.size=12 ,
    this.height=1.2,

  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Roboto',
        color: color,
        fontWeight: FontWeight.w400,
        fontSize: size,
        height: height,
      ),

    );
  }
}
