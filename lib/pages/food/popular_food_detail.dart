import 'package:flutter/material.dart';
import 'package:stratos_cafe/utils/dimensions.dart';
import 'package:stratos_cafe/widgets/app_column.dart';
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
              top: Dimensions.popularFoodImgSize-20,
              bottom: 0,

              child: Container(
                padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20, top: Dimensions.height20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(Dimensions.radius20),
                    topLeft: Radius.circular(Dimensions.radius20),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppColumn(text: "Kolhapuri Misal in Pune",),
                    SizedBox(height: Dimensions.height20,),
                    BigTexts(text: "Introduce"),
                  ],
                ),

          )),
        ],
      ),
      bottomNavigationBar: Container(
        height: 120,

   ));
  }
}
