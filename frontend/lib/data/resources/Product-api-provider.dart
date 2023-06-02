import 'dart:convert';

import 'package:http/http.dart' as http;
import '../model/productmodel.dart';

class ProductApiProvider {
  Future<List<ProductModel>> fetchProductList() async {
    print('Resource folder');
    var uri = Uri.parse('https://fakestoreapi.com/products');

    var response = await http.get(uri);
    var data = jsonDecode(response.body);
    List templist = [];
    for (var v in data) {
      templist.add(v);
      print('Api call successful');
    }

    return ProductModel.productFromsnapshot(templist);
  }

  Future<List<ProductModel>> fetchLimitedProductList(
      int numberofProduct) async {
    var uri =
        Uri.parse('https://fakestoreapi.com/products?limit=$numberofProduct');

    var response = await http.get(uri);
    var data = jsonDecode(response.body);
    List templist = [];
    for (var v in data) {
      templist.add(v);
    }

    return ProductModel.productFromsnapshot(templist);
  }

  Future<ProductModel> fetchSingleProduct(int value) async {
    var uri = Uri.parse('https://fakestoreapi.com/products/$value');

    var response = await http.get(uri);
    var data = jsonDecode(response.body);
    

    return ProductModel.fromJson(data);
  }
}
