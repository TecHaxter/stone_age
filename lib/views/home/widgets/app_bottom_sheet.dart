import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:stone_age/data/constants/constants.dart';
import 'package:stone_age/utils/utils.dart';
import 'package:stone_age/views/home/widgets/_app_bottom_sheet_item_tile.dart';

class AppBottomSheet extends StatelessWidget {
  final int pageNumber;
  final Function(int) onTap;
  AppBottomSheet({
    Key? key,
    required this.pageNumber,
    required this.onTap,
  }) : super(key: key);

  final items = [
    ['Store', LineIcons.shoppingBag],
    ['Search', LineIcons.search],
    ['Menu', LineIcons.bars],
    ['Profile', LineIcons.horizontalSliders],
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 24.w,
        right: 24.w,
        top: 16.h,
        bottom: 16.h,
      ),
      margin: EdgeInsets.symmetric(horizontal: 6.w),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.lightGray,
        ),
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(16.r),
        ),
        color: AppColors.theWhite,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ...items
              .mapIndexed(
                (index, List item) => AppBottomSheetItemTile(
                  name: item[0] as String,
                  thisPage: index,
                  currentPage: pageNumber,
                  iconData: item[1] as IconData,
                  onTap: onTap,
                ),
              )
              .toList(),
        ],
      ),
    );
  }
}
