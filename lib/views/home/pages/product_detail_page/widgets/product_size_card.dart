import 'package:flutter/material.dart';
import 'package:stone_age/data/constants/app_assets.dart';
import 'package:stone_age/data/constants/app_colors.dart';
import 'package:stone_age/data/constants/app_text_styles.dart';
import 'package:stone_age/utils/utils.dart';
import 'package:stone_age/views/common/common.dart';

class ProductSizeCard extends StatelessWidget {
  final Color color100;
  final Color color300;
  final bool isSelected;
  final double pricePerGram;
  final int totalPrice;
  final int index;
  final Function(int) onTap;
  // final int pricePerGram;
  const ProductSizeCard({
    Key? key,
    required this.isSelected,
    required this.pricePerGram,
    required this.totalPrice,
    required this.index,
    required this.color100,
    required this.color300,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(index),
      child: Container(
        padding: EdgeInsets.all(16.r),
        decoration: BoxDecoration(
          color: isSelected ? color100 : AppColors.theWhite,
          border: Border.all(
            color: isSelected ? Colors.transparent : AppColors.lightGray,
          ),
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                if (index >= 2) ...{
                  Image.asset(
                    AppAssets.stoneAge,
                    width: 12.w,
                  ),
                },
                Image.asset(
                  AppAssets.stoneAge,
                  width: 24.w,
                ),
                if (index >= 1) ...{
                  Image.asset(
                    AppAssets.stoneAge,
                    width: 12.w,
                  ),
                }
              ],
            ),
            sizedBoxWithHeight(24),
            Text(
              '\$$totalPrice',
              style: AppTextStyles.text16w800Black.copyWith(
                color: isSelected ? color300 : AppColors.theBlack,
              ),
            ),
            sizedBoxWithHeight(8),
            Text(
              '\$${pricePerGram.toStringAsFixed(2)}/gm',
              style: AppTextStyles.text12w800Black.copyWith(
                color: isSelected ? AppColors.theBlack : AppColors.darkGray,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
