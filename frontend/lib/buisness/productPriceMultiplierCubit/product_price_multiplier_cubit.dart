import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:sqaure_project/packages.dart';

part 'product_price_multiplier_state.dart';

class ProductPriceMultiplierCubit extends Cubit<ProductPriceMultiplierState> {
  ProductPriceMultiplierCubit()
      : super(
          const ProductPriceMultiplierInitial(priceMultiplierValue: 0),
        );

  void increment() {
    debugPrint('Value before increment was ${state.priceIncreament}');
    emit(
      ProductPriceMultiplierIncrease(increment: state.priceIncreament + 1),
    );
    debugPrint('Value after increment is ${state.priceIncreament}');
  }

  void decrement() {
    debugPrint('Value before decrement was ${state.priceIncreament}');
    emit(
      ProductPriceMultiplierDecrease(decrement: state.priceIncreament - 1),
    );
    debugPrint('Value after decrement is ${state.priceIncreament}');
  }
}
