import 'package:flutter/material.dart';
import 'package:stratos_cafe/pages/home/main_food_page.dart';
import 'package:get/get.dart';
import 'package:stratos_cafe/pages/food/popular_food_detail.dart';
import 'package:stratos_cafe/pages/home/main_food_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: PopularFoodDetail(),
    );
  }
}

