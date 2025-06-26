import 'package:flutter/material.dart';
import 'package:stratos_cafe/utils/dimensions.dart';

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
            left: Dimensions.width20,
            right: Dimensions.width20,
              child: Row(
                children: [

                ],


              ) ),
        ],
      ),
    );
  }
}
