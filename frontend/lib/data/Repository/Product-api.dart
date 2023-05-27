import '../model/productmodel.dart';
import '../resources/Product-api-provider.dart';

class ProductApiRepository {
  final _provider = ProductApiProvider();

  Future<ProductModel> fetchProductList() async {
    return _provider.fetchProductList();
  }
}
