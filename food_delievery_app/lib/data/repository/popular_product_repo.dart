import 'package:food_delievery_app/data/api/api_client.dart';
import 'package:food_delievery_app/utils/app_constants.dart';
import 'package:get/get.dart';

class PopularProductRepo extends GetxService {
  //to load data from internet
  final ApiClient apiClient;
  PopularProductRepo({required this.apiClient});

  Future<Response> getPopularProductList() async {
    return await apiClient
        .getData(AppConstants.POPULAR_PRODUCT_URL); //end points
  }
}
