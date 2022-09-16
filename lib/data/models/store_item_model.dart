import 'package:flutter/material.dart';

class StoreItemModel {
  String? name;
  String? category;
  String? phcRange;
  String? ebdRange;
  List<Color>? colors;
  bool? liked;
  String? image;
  List<int>? bulkPrice;
  List<int>? weight;

  StoreItemModel({
    this.name,
    this.category,
    this.phcRange,
    this.ebdRange,
    this.bulkPrice,
    this.colors,
    this.liked,
    this.image,
    this.weight,
  });
}
