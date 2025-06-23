import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stratos_cafe/utils/colors.dart';
import 'package:stratos_cafe/widgets/big_texts.dart';
import 'package:stratos_cafe/widgets/small_texts.dart';

import '../widgets/icon_and_text_widget.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({super.key});

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.9);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //color: Colors.redAccent,
      height: 320,
      child: PageView.builder(
        controller: pageController,
        itemCount: 5,
        itemBuilder: (context, position){
        return _buildPageItem(position);
      }),
    );
  }
  Widget _buildPageItem(int index)
  {
    return Stack(
      children: [
        //bigger box
        Container(
          height: 220,
          //bigger box margin
          margin: EdgeInsets.only(left: 10, right: 10, top: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: index.isEven?Color(0xFF69c5df): Color(0xFF9294cc),
              image: DecorationImage(
                image: AssetImage("assets/image/food0.png"),
                fit: BoxFit.cover,
              )
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 120,
            margin: EdgeInsets.only(left: 30, right: 30, bottom: 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,

            ),
            //smaller box
            child: Container(
              //smaller box margin
              padding: EdgeInsets.only(top: 15, left: 30, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigTexts(text: "MAHARASHTRIAN SPICE", ),
                  SizedBox(height: 10,),
                  Row(
                    children: [

                      Wrap(
                        children: List.generate(5, (index) => Icon(Icons.star, color: AppColors.mainColor)),
                      ),
                      SizedBox(width: 10,),
                      SmallTexts(text: "4.5"),
                      SizedBox(width: 10,),
                      SmallTexts(text: "1287 "),
                      SmallTexts(text: "Comments"),
                    ],
                  ),

                  //third row of smaller box having three more columns - location time etc
                  SizedBox(height: 20,),
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
              ),
            ),
          ),
        )
      ],
    );
  }
}
