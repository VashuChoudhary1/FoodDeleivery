import 'package:food_delievery_app/controllers/popular_product_controleer.dart';
import 'package:food_delievery_app/data/api/api_client.dart';
import 'package:food_delievery_app/data/repository/popular_product_repo.dart';
import 'package:food_delievery_app/utils/app_constants.dart';
import 'package:get/get.dart';

Future<void> init() async {
  //api client
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));

  //repo
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));

  //controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}
