import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:sqaure_project/data/Repository/Product-api.dart';
import 'package:sqaure_project/data/model/productmodel.dart';
import 'package:sqaure_project/packages.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc() : super(ProductInitial()) {
    final ProductApiRepository _productApiRepository = ProductApiRepository();
    on<GetProductList>((event, emit) async {
      try {
        emit(ProductLoading());
        final productList = await _productApiRepository.fetchProductList();
        emit(ProductLoaded(productModel: productList));
        if (productList.error != null) {
          emit(
            ProductError(
              errorMessage: productList.error.toString(),
            ),
          );
        }
      } catch (e) {
        emit(
          ProductError(
            errorMessage: e.toString(),
          ),
        );
      }
    });
  }
}
