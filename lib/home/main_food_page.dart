import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stratos_cafe/home/food_page_body.dart';
import 'package:stratos_cafe/utils/colors.dart';
import 'package:stratos_cafe/utils/dimensions.dart';
import 'package:stratos_cafe/widgets/big_texts.dart';
import 'package:stratos_cafe/widgets/small_texts.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({super.key});

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    print("current height is${MediaQuery.of(context).size.height}");
    return Scaffold(
      body: Column(
        children: [
          Container(

            child: Container(
              margin: EdgeInsets.only(top:45, bottom: 15 ),
              padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20, ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigTexts(text: "INDIA", color: AppColors.mainColor,size: 25,),
                      Row(
                        children: [

                          SmallTexts(text: "Pune", color: Colors.black),
                          Icon(Icons.arrow_drop_down_rounded)
                        ],
                      ),
                    ],
                  ),
                  Center(
                    child: Container(
                      width: Dimensions.width45,
                      height: Dimensions.height45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(Dimensions.radius15),
                          color: AppColors.mainColor,

                      ),
                      child: Icon(Icons.search, color: Colors.white),
                    ),
                  )

                ],
              ),
            ),
          ),
          FoodPageBody(),

        ],


      ),
    );
  }
}
