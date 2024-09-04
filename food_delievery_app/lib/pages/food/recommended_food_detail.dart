import 'package:flutter/material.dart';
import 'package:food_delievery_app/pages/home/AppColor.dart';
import 'package:food_delievery_app/utils/dimensions.dart';
import 'package:food_delievery_app/widgets/app_icon.dart';
import 'package:food_delievery_app/widgets/big_widgets.dart';
import 'package:food_delievery_app/widgets/expandable_text.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 60,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined)
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(40),
              child: Container(
                child: Center(
                    child: BigText(
                  size: Dimensions.font26,
                  text: "Chinease Side",
                )),
                width: double.maxFinite,
                padding: EdgeInsets.only(
                    top: Dimensions.height10, bottom: Dimensions.height10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(Dimensions.radius20),
                        topRight: Radius.circular(Dimensions.radius20))),
              ),
            ),
            pinned: true,
            backgroundColor: AppColors.iconColor1,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/image/food4.jfif",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  child: ExpandableTextWidget(
                      text:
                          "Let us give you some goodness of traditional Indian food.Fewer calories, traditional Indian food contains fewer calories which may help one to control and maintain weight.Supports immunity, Indian food embraces immunity and brain too.Good for heart, less saturated fat in traditional Indian food helps to preserve our hearts.Variety in Indian cooking oil can be easily seen because of its diversity. It has a great benefit on health as well.Uses of seasonal and local vegetables and fruits also promote good health and better immunity.Indian food uses a lot of grains like bajra, jowar along with different rice grains and pulse making traditional Indian food loaded with goodness.Let us give you some goodness of traditional Indian food.Fewer calories, traditional Indian food contains fewer calories which may help one to control and maintain weight.Supports immunity, Indian food embraces immunity and brain too.Good for heart, less saturated fat in traditional Indian food helps to preserve our hearts.Variety in Indian cooking oil can be easily seen because of its diversity. It has a great benefit on health as well.Uses of seasonal and local vegetables and fruits also promote good health and better immunity.Indian food uses a lot of grains like bajra, jowar along with different rice grains and pulse making traditional Indian food loaded with goodness.Let us give you some goodness of traditional Indian food.Fewer calories, traditional Indian food contains fewer calories which may help one to control and maintain weight.Supports immunity, Indian food embraces immunity and brain too.Good for heart, less saturated fat in traditional Indian food helps to preserve our hearts.Variety in Indian cooking oil can be easily seen because of its diversity. It has a great benefit on health as well.Uses of seasonal and local vegetables and fruits also promote good health and better immunity.Indian food uses a lot of grains like bajra, jowar along with different rice grains and pulse making traditional Indian food loaded with goodness.Let us give you some goodness of traditional Indian food.Fewer calories, traditional Indian food contains fewer calories which may help one to control and maintain weight.Supports immunity, Indian food embraces immunity and brain too.Good for heart, less saturated fat in traditional Indian food helps to preserve our hearts.Variety in Indian cooking oil can be easily seen because of its diversity. It has a great benefit on health as well.Uses of seasonal and local vegetables and fruits also promote good health and better immunity.Indian food uses a lot of grains like bajra, jowar along with different rice grains and pulse making traditional Indian food loaded with goodness."),
                  margin: EdgeInsets.only(
                      left: Dimensions.width20, right: Dimensions.width20),
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
                left: Dimensions.width20 * 2.5,
                right: Dimensions.width20 * 2.5,
                top: Dimensions.height10,
                bottom: Dimensions.height10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                    iconSize: Dimensions.iconSize24,
                    backgroundColor: AppColors.mainColor,
                    iconColor: Colors.white,
                    icon: Icons.remove),
                BigText(
                  text: " \$ 12.88 " + " X " + " 8 ",
                  color: Colors.black,
                  size: Dimensions.font26,
                ),
                AppIcon(
                  iconSize: Dimensions.iconSize24,
                  icon: Icons.add,
                  backgroundColor: AppColors.mainColor,
                  iconColor: Colors.white,
                )
              ],
            ),
          ),
          Container(
            height: Dimensions.bottomHeightBar,
            padding: EdgeInsets.only(
                top: Dimensions.height30,
                bottom: Dimensions.height30,
                left: Dimensions.width20,
                right: Dimensions.width20),
            decoration: BoxDecoration(
                color: AppColors.bottomBackgroundColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(Dimensions.radius45),
                  topRight: Radius.circular(Dimensions.radius45),
                )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    padding: EdgeInsets.only(
                        top: Dimensions.height20,
                        bottom: Dimensions.height20,
                        left: Dimensions.width20,
                        right: Dimensions.width20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      color: Colors.white,
                    ),
                    child: Icon(
                      Icons.favorite,
                      color: AppColors.mainColor,
                    )),
                Container(
                  padding: EdgeInsets.only(
                      top: Dimensions.height20,
                      bottom: Dimensions.height20,
                      left: Dimensions.width20,
                      right: Dimensions.width20),
                  child: BigText(
                    text: "\$10 | Add to cart",
                    color: Colors.white,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      color: AppColors.mainColor), //mainColor
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
