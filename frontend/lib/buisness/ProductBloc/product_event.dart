// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'product_bloc.dart';

@immutable
abstract class ProductEvent extends Equatable {
  const ProductEvent();

  @override
  List<Object> get props => [];
}

class GetProductList extends ProductEvent {}

class GetLimitedProductList extends ProductEvent {
  final int value;
  const GetLimitedProductList({
    required this.value,
  });

  @override
  List<Object> get props => [
        value,
      ];
}

class GetSingleproduct extends ProductEvent {
  final int value;
  const GetSingleproduct({
    required this.value,
  });
  @override
  List<Object> get props => [
        value,
      ];
}
