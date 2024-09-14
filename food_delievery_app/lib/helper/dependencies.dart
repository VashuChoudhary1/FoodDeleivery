import 'package:food_delievery_app/controllers/cart_controller.dart';
import 'package:food_delievery_app/controllers/popular_product_controleer.dart';
import 'package:food_delievery_app/controllers/recommended_product_controller.dart';
import 'package:food_delievery_app/data/api/api_client.dart';
import 'package:food_delievery_app/data/repository/cart_repo.dart';
import 'package:food_delievery_app/data/repository/popular_product_repo.dart';
import 'package:food_delievery_app/data/repository/recommended_product_repo.dart';
import 'package:food_delievery_app/utils/app_constants.dart';
import 'package:get/get.dart';

Future<void> init() async {
  //api client
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));

  //repo
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => RecommendedProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => CartRepo());

  //controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
  Get.lazyPut(
      () => RecommendedProductController(recommendedProductRepo: Get.find()));
  Get.lazyPut(() => CartController(cartRepo: Get.find()));
}
