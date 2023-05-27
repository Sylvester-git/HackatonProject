// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'product_bloc.dart';

@immutable
abstract class ProductState extends Equatable {
  const ProductState();
  @override
  List<Object> get props => [];
}

class ProductInitial extends ProductState {}

class ProductLoaded extends ProductState {
  final ProductModel productModel;
  const ProductLoaded({
    required this.productModel,
  });

  @override
  List<Object> get props => [
        productModel,
      ];
}

class ProductLoading extends ProductState {
  
}

class ProductError extends ProductState {
  final String errorMessage;
  const ProductError({
    required this.errorMessage,
  });

  @override
  List<Object> get props => [
        errorMessage,
      ];
}
