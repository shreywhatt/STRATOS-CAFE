import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stratos_cafe/widgets/small_texts.dart';

import '../utils/colors.dart';
import '../utils/dimensions.dart';
import 'big_texts.dart';
import 'icon_and_text_widget.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({super.key,
    required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    BigTexts(text: text, size: Dimensions.font26, ),
    SizedBox(height: Dimensions.height10,),
    Row(
    //rating stars and comments etc
    children: [
    //rating stars comments etc
    Wrap(
    children: List.generate(5, (index) => Icon(Icons.star, color: AppColors.mainColor)),
    ),
    SizedBox(width: Dimensions.width10,),
    SmallTexts(text: "4.5"),
    SizedBox(width: Dimensions.width10,),
    SmallTexts(text: "1287 "),
    SmallTexts(text: "Comments"),
    ],
    ),

    //third row of smaller box having three more columns - location time etc
    SizedBox(height: Dimensions.height20,),
    Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
    IconAndTextWidget(icon: Icons.circle_sharp,
    text: "1.7km",
    iconColor: AppColors.iconColor1,),
    IconAndTextWidget(icon: Icons.location_on,
    text: "Normal",
    iconColor: AppColors.mainColor,),
    IconAndTextWidget(icon: Icons.access_time_rounded,
    text: "Normal",
    iconColor: AppColors.iconColor2,)
    ],
    )
    ],
    );
  }
}
