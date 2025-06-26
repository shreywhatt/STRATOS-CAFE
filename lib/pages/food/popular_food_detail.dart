import 'package:flutter/material.dart';
import 'package:stratos_cafe/utils/dimensions.dart';
import 'package:stratos_cafe/widgets/app_icon.dart';

import '../../utils/colors.dart';
import '../../widgets/big_texts.dart';
import '../../widgets/icon_and_text_widget.dart';
import '../../widgets/small_texts.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height:Dimensions.popularFoodImgSize,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/image/food0.png",),
                      fit: BoxFit.cover,
                  ),

                ),

          )),
          Positioned(
            top: Dimensions.height45,
            left: Dimensions.width20,
            right: Dimensions.width20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(icon: Icons.arrow_back_ios),
                  AppIcon(icon: Icons.shopping_cart_outlined)
                ],
              ) ),
          Positioned(
              left: 0,
              right: 0,
              top: Dimensions.popularFoodImgSize,

              child: Container(
                padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20, top: Dimensions.height20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigTexts(text: "MAHARASHTRIAN SPICE", ),
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
                ),

          )),
        ],
      ),
    );
  }
}
