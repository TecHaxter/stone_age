import 'package:flutter/material.dart';
import 'package:stone_age/data/models/models.dart';
import 'package:stone_age/views/views.dart';

class RouteArguments {
  RouteArguments._();

  static Widget misTypedArgsRoute<T>(Object args) {
    return const PageNotFoundScreen();
  }

  static bool hasInvalidArgs<T>(Object args) {
    return (args is! T);
  }
}

class ProductDetailPageArgs {
  final StoreItemModel item;

  ProductDetailPageArgs({required this.item});
}

class CartPageArgs {
  final List<StoreItemModel> items;
  final List<int> quantity;
  final List<int> selectedWeightIndex;

  CartPageArgs({
    required this.items,
    required this.quantity,
    required this.selectedWeightIndex,
  });
}
