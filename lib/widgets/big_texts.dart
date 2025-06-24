import 'package:flutter/cupertino.dart';
import 'package:stratos_cafe/utils/dimensions.dart';

class BigTexts extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  TextOverflow overflow;
  BigTexts({Key? key,
    this.color = const Color(0xFF332d2b) ,
    required this.text,
    this.size=0 ,
    this.overflow=TextOverflow.ellipsis,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overflow,
      style: TextStyle(
        fontFamily: 'Roboto',
        color: color,
        fontSize: size==0 ?Dimensions.font20:size,
        fontWeight: FontWeight.w800,
      ),

    );
  }
}
