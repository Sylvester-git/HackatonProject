// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'product_price_multiplier_cubit.dart';

@immutable
abstract class ProductPriceMultiplierState extends Equatable {
  final int priceIncreament;

  const ProductPriceMultiplierState({
    this.priceIncreament = 0,
  });

  @override
  List<Object> get props => [];
}

class ProductPriceMultiplierInitial extends ProductPriceMultiplierState {
  final int priceMultiplierValue;
  const ProductPriceMultiplierInitial({
    required this.priceMultiplierValue,
  }) : super(priceIncreament: priceMultiplierValue);

  @override
  List<Object> get props => [
        priceMultiplierValue,
      ];
}

class ProductPriceMultiplierIncrease extends ProductPriceMultiplierState {
  final int increment;
  const ProductPriceMultiplierIncrease({
    required this.increment,
  }) : super(priceIncreament: increment);

  @override
  List<Object> get props => [
        increment,
      ];
}

class ProductPriceMultiplierDecrease extends ProductPriceMultiplierState {
  final int decrement;
  const ProductPriceMultiplierDecrease({
    required this.decrement,
  }) : super(priceIncreament: decrement);

  @override
  List<Object> get props => [
        decrement,
      ];
}
