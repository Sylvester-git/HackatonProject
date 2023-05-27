// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:sqaure_project/packages.dart';

// ignore: must_be_immutable
class ProductModel extends Equatable {
  String? itemname;
  String? imageurl;
  int? itemRating;
  int? price;
  String? itemID;
  String? error;
  bool? isFavotite;
  ProductModel({
    this.itemname,
    this.imageurl,
    this.itemRating,
    this.price,
    this.itemID,
    this.error,
    this.isFavotite,
  });

  ProductModel.witherror(String errorMessage) {
    error = errorMessage;
  }

  @override
  List<Object?> get props => [
        itemname,
        imageurl,
        itemRating,
        price,
        itemID,
        error,
        isFavotite,
      ];

  ProductModel copyWith({
    String? itemname,
    String? imageurl,
    int? itemRating,
    int? price,
    String? itemID,
    String? error,
    bool? isFavotite,
  }) {
    return ProductModel(
      itemname: itemname ?? this.itemname,
      imageurl: imageurl ?? this.imageurl,
      itemRating: itemRating ?? this.itemRating,
      price: price ?? this.price,
      itemID: itemID ?? this.itemID,
      error: error ?? this.error,
      isFavotite: isFavotite ?? this.isFavotite,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'itemname': itemname,
      'imageurl': imageurl,
      'itemRating': itemRating,
      'price': price,
      'itemID': itemID,
      'error': error,
      'isFavotite': isFavotite,
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      itemname: map['itemname'] != null ? map['itemname'] as String : null,
      imageurl: map['imageurl'] != null ? map['imageurl'] as String : null,
      itemRating: map['itemRating'] != null ? map['itemRating'] as int : null,
      price: map['price'] != null ? map['price'] as int : null,
      itemID: map['itemID'] != null ? map['itemID'] as String : null,
      error: map['error'] != null ? map['error'] as String : null,
      isFavotite: map['isFavotite'] != null ? map['isFavotite'] as bool : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductModel.fromJson(String source) =>
      ProductModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
