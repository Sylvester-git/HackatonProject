// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:sqaure_project/packages.dart';

// ignore: must_be_immutable
class RatingModel extends Equatable {
  double? rate;
  int? count;

  RatingModel({this.rate, this.count});

  RatingModel.fromJson(Map<String, dynamic> json) {
    rate = json['rate'];
    count = json['count'];
  }

  @override
  List<Object?> get props => [
        rate,
        count,
      ];

  RatingModel copyWith({
    double? rate,
    int? count,
  }) {
    return RatingModel(
      rate: rate ?? this.rate,
      count: count ?? this.count,
    );
  }
}
