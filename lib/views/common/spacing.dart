import 'package:stone_age/utils/utils.dart';
import 'package:flutter/material.dart';

Widget sizedBoxWithHeight(int? height) {
  return SizedBox(
    height: height?.h,
  );
}

Widget sizedBoxWithWidth(int? width) {
  return SizedBox(
    width: width?.w,
  );
}

Widget customSizedBox(int? height, int? width) {
  return SizedBox(
    height: height?.h,
    width: width?.w,
  );
}

Widget sliverSizedBoxWithHeight(int? height) {
  return SliverToBoxAdapter(
    child: sizedBoxWithHeight(height),
  );
}
