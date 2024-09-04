// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_delievery_app/pages/home/food_page_body.dart';
import 'package:food_delievery_app/utils/dimensions.dart';
import 'package:food_delievery_app/widgets/big_widgets.dart';
import 'package:food_delievery_app/widgets/small_text.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({super.key});

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //showing header
          Container(
            //header
            child: Container(
              margin: EdgeInsets.only(
                  top: Dimensions.height45, bottom: Dimensions.height15),
              padding: EdgeInsets.only(
                  left: Dimensions.radius20, right: Dimensions.width20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(
                        text: "India",
                        color: Color.fromARGB(255, 121, 216, 205),
                        size: 30,
                      ),
                      Row(
                        children: [
                          SmallText(
                            text: "City",
                            color: Colors.black54,
                          ),
                          Icon(Icons.arrow_drop_down_rounded)
                        ],
                      )
                    ],
                  ),
                  Center(
                    child: Container(
                      width: Dimensions.width45,
                      height: Dimensions.height45,
                      child: Icon(Icons.search,
                          color: Colors.white, size: Dimensions.iconSize24),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius15),
                        color: Color(0xFF89dad0),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          //showing body
          Expanded(
              child: SingleChildScrollView(
            child: FoodPageBody(),
          )),
        ],
      ),
    );
  }
}
