import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:stratos_cafe/utils/colors.dart';
import 'package:stratos_cafe/utils/dimensions.dart';
import 'package:stratos_cafe/widgets/app_column.dart';
import 'package:stratos_cafe/widgets/big_texts.dart';
import 'package:stratos_cafe/widgets/small_texts.dart';
import '../../widgets/icon_and_text_widget.dart';


class FoodPageBody extends StatefulWidget {
  const FoodPageBody({super.key});

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.9);
  //to make the sliding boxes big and small during scrolling
  var _currPageValue=0.0;
  final double _scaleFactor=0.8;
  final double _height = Dimensions.pageViewContainer;
  @override
  void initState(){
    super.initState();
    pageController.addListener((){
    setState(() {
      _currPageValue= pageController.page!;
      //print("Current value is "+_currPageValue.toString());
    });
    });
  }

  @override
  void dispose(){
    pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //slider section the topmost one that took 2.5 hours but 3 days
        SizedBox(
          height: Dimensions.pageView,
          child: PageView.builder(
              controller: pageController,
              itemCount: 5,
              itemBuilder: (context, position){
                return _buildPageItem(position);
              }),
        ),
        new DotsIndicator(
        dotsCount: 5,
        position: _currPageValue,
        decorator: DotsDecorator(
        activeColor: AppColors.mainColor,
        size: const Size.square(9.0),
        activeSize: const Size(18.0, 9.0),
        activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(Dimensions.radius5)),
        ),
    ),

        //Popolar Text box with food pairing
        SizedBox(height: Dimensions.height30,),
        Container(
          margin: EdgeInsets.only(left: Dimensions.width30),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              BigTexts(text: "Popular"),
              SizedBox(width: Dimensions.width10,),
              Container(
                margin: const EdgeInsets.only(bottom: 3),
                child: BigTexts(text: ".", color: Colors.black26,),
              ),
              SizedBox(width: Dimensions.width10,),
              Container(
                margin: const EdgeInsets.only(bottom: 3),
                child: SmallTexts(text: "Food Pairing",),
              )
              
            ],
          ),
        ),

        // Parent Container for Popular List of Foods and images

    ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index){
                return Container(
                  margin: EdgeInsets.only(left: Dimensions.width10, right: Dimensions.width10,),
                  child: Row(
                    children: [
                      //Container for the items under popular food pairing section
                      Container(
                        margin: EdgeInsets.only(left: Dimensions.width5),
                        width:  Dimensions.listViewImgSize,
                        height: Dimensions.listViewImgSize,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(Dimensions.radius20),
                            color: Colors.white38,
                            image: DecorationImage(image: AssetImage("assets/image/food0.png"))

                        ),
                      ),

                      //Text container for the food items under the Popular section
                      Expanded(
                          child: Container(
                              height: Dimensions.listViewTextContSize,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(Dimensions.radius20),
                                bottomRight: Radius.circular(Dimensions.radius20)
                            ),
                            color: Colors.white,
                          ),
                          child: Padding(padding: EdgeInsets.only(
                              left: Dimensions.width10, top: Dimensions.height10, right: Dimensions.width5),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,

                              children: [
                                BigTexts(text: "Kolhapuri Misal in Ahmednagar"),
                                SizedBox(height: Dimensions.height10,),
                                SmallTexts(text: "With special kolhapuri black masala"),
                                SizedBox(height: Dimensions.height10,),
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
                              //third row of smaller box having three more columns - location time etc


                            ),
                      ))
                    ],
                  ),
                );

              }),
              ],
    );
  }
  Widget _buildPageItem(int index)
  {
    //scaling of boxes while scrolling
    Matrix4 matrix = new Matrix4.identity();
    if(index==_currPageValue.floor()){
      var currScale = 1-(_currPageValue-index)*(1-_scaleFactor);
      var currTrans = _height*(1-currScale)/2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0,currTrans,0);

    }
    else if(index==_currPageValue.floor()+1){
      var currScale = _scaleFactor+(_currPageValue-index)*(1-_scaleFactor);
      var currTrans = _height*(1-currScale)/2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0,currTrans,0);

    }
    else if(index==_currPageValue.floor()-1){
      var currScale = 1-(_currPageValue-index)*(1-_scaleFactor);
      var currTrans = _height*(1-currScale)/2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0,currTrans,0);

    }
    else {
      var currScale=0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, _height*(1-_scaleFactor)/2, 1);
      
    }
    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          //bigger box
          Container(
            height: Dimensions.pageViewContainer,
            //bigger box margin
            margin: EdgeInsets.only(left: Dimensions.width10, right: Dimensions.width10, top: Dimensions.height10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius30),
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
              height: Dimensions.pageViewTextContainer,
              margin: EdgeInsets.only(left: Dimensions.width30, right: Dimensions.width30, bottom: Dimensions.height30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius30),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFFe8e8e8),
                    blurRadius: Dimensions.radius5,
                    offset: Offset(0, 5)
,                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(-5, 0)
                  ),
                  BoxShadow(
                      color: Colors.white,
                      offset: Offset(-5, 0)
                  )
                ]

              ),
              //smaller box
              child: Container(
                //smaller box margin
                padding: EdgeInsets.only(top: Dimensions.height15, left: Dimensions.width30, right: Dimensions.width30),
                child: AppColumn(text: "Kolhapuri Misal in Pune",),
              ),
            ),
          )
        ],
      ),
    );
  }
}
