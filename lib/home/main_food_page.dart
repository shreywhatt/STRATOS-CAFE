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
    // Get screen dimensions
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // Print to console
    print('Screen Width: $screenWidth');
    print('Screen Height: $screenHeight');

    return Scaffold(
      body: Column(
        children: [
          Container(

            child: Container(
              margin: EdgeInsets.only(top:Dimensions.height45, bottom: Dimensions.height15 ),
              padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20, ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigTexts(text: "INDIA", color: AppColors.mainColor,size: 20,),
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
                      child: Icon(Icons.search, color: Colors.white, size: Dimensions.iconsize24,),
                    ),
                  )

                ],
              ),
            ),
          ),
          Expanded(child: SingleChildScrollView(
            child: FoodPageBody(),
            ),)


        ],


      ),
    );
  }
}
