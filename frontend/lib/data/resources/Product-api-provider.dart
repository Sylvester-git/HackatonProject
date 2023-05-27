import 'package:dio/dio.dart';
import '../model/productmodel.dart';

class ProductApiProvider {
  final Dio _dio = Dio();
  //TODO Find a product api
  final String _url = '';

  Future<ProductModel> fetchProductList() async {
    try {
      Response response = await _dio.get(_url);
      return ProductModel.fromJson(response.data);
    } catch (error) {
      return ProductModel.witherror(
        error.toString(),
      );
    }
  }
}
