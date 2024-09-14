import 'package:food_delievery_app/data/api/api_client.dart';
import 'package:food_delievery_app/utils/app_constants.dart';
import 'package:get/get.dart';

class RecommendedProductRepo extends GetxService {
  //to load data from internet
  final ApiClient apiClient;
  RecommendedProductRepo({required this.apiClient});

  Future<Response> getRecommendedProductList() async {
    return await apiClient
        .getData(AppConstants.RECOMMENDED_PRODUCT_URL); //end points
  }
}
