import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:stone_age/data/constants/app_assets.dart';
import 'package:stone_age/data/constants/app_colors.dart';
import 'package:stone_age/data/constants/app_strings.dart';
import 'package:stone_age/data/constants/app_text_styles.dart';
import 'package:stone_age/data/models/models.dart';
import 'package:stone_age/utils/utils.dart';
import 'package:stone_age/views/common/common.dart';

class CartItem extends StatelessWidget {
  final StoreItemModel item;
  final int selectedWeight;
  final int quantity;
  final Function(bool) onTapIncreQuatity;
  const CartItem({
    Key? key,
    required this.item,
    required this.selectedWeight,
    required this.quantity,
    required this.onTapIncreQuatity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.h,
      // color: AppColors.blue100,
      child: Stack(
        children: [
          Positioned(
            left: 56.w,
            top: 0,
            bottom: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                border: Border.all(
                  color: AppColors.lightGray,
                ),
                // color: AppColors.green300,
                borderRadius: BorderRadius.circular(24.r),
              ),
              padding: EdgeInsets.only(
                  top: 24.h, bottom: 24.h, left: 32.w, right: 24.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.name ?? AppStrings.chronic,
                        style: AppTextStyles.text18w800Black,
                      ),
                      sizedBoxWithHeight(4),
                      Text(
                        '\$${((item.bulkPrice?[selectedWeight] ?? 160) / (item.weight?[selectedWeight] ?? 1)).toStringAsFixed(2)}/gm',
                        style: AppTextStyles.text12w800Black.copyWith(
                          color: AppColors.darkGray,
                        ),
                      ),
                      const Expanded(child: SizedBox()),
                      Row(
                        children: [
                          Text(
                            '\$${item.bulkPrice?[selectedWeight] ?? 160}',
                            style: AppTextStyles.text16w800Black.copyWith(
                              color: AppColors.green300,
                            ),
                          ),
                          sizedBoxWithWidth(8),
                          if ((selectedWeight) >= 2) ...{
                            Image.asset(
                              AppAssets.stoneAge,
                              width: 8.w,
                            ),
                          },
                          Image.asset(
                            AppAssets.stoneAge,
                            width: 16.w,
                          ),
                          if ((selectedWeight) >= 1) ...{
                            Image.asset(
                              AppAssets.stoneAge,
                              width: 8.w,
                            ),
                          }
                        ],
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () => onTapIncreQuatity(true),
                        child: Icon(
                          LineIcons.plus,
                          color: AppColors.darkGray,
                          size: 18.sp,
                        ),
                      ),
                      Text(
                        '$quantity',
                        style: AppTextStyles.text14w800Black,
                      ),
                      InkWell(
                        onTap: () => onTapIncreQuatity(false),
                        child: Icon(
                          LineIcons.minus,
                          color: AppColors.darkGray,
                          size: 18.sp,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 8.h,
            bottom: 8.h,
            child: Image.asset(
              item.image ?? AppAssets.chronic,
              height: double.maxFinite,
            ),
          ),
        ],
      ),
    );
  }
}
