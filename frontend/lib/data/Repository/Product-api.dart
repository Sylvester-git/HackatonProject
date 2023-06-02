import '../model/productmodel.dart';
import '../resources/Product-api-provider.dart';

class ProductApiRepository {
  final _provider = ProductApiProvider();

  Future<List<ProductModel>> fetchProductList() async {
    print('prodct repository');
    return _provider.fetchProductList();
  }

  Future<List<ProductModel>> fetchLimitedProductList(
      int numberofProduct) async {
    return _provider.fetchLimitedProductList(numberofProduct);
  }

  Future<ProductModel> fetchSingleProduct(int value) async {
    return _provider.fetchSingleProduct(value);
  }
}
