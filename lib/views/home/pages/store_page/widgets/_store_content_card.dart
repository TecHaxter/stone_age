import 'package:flutter/material.dart';
import 'package:stone_age/data/constants/app_assets.dart';
import 'package:stone_age/data/constants/app_colors.dart';
import 'package:stone_age/data/constants/app_text_styles.dart';
import 'package:stone_age/data/models/models.dart';
import 'package:stone_age/routes/route_arguments.dart';
import 'package:stone_age/routes/routes.dart';
import 'package:stone_age/utils/utils.dart';
import 'package:stone_age/views/common/common.dart';

class StoreContentCard extends StatelessWidget {
  final StoreItemModel item;
  const StoreContentCard({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        AppEnvironment.navigator.pushNamed(
          HomeRoute.productDetailScreen,
          arguments: ProductDetailPageArgs(item: item),
        );
      },
      child: SizedBox(
        height: 216.h,
        width: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              left: 32.w,
              right: 32.w,
              top: 32.h,
              bottom: 0,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24.r),
                  color: item.colors?[0] ?? AppColors.green100,
                ),
                padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.w,
                        vertical: 6.h,
                      ),
                      decoration: BoxDecoration(
                        color: item.colors?[1] ?? AppColors.green200,
                        borderRadius: BorderRadius.circular(4.r),
                      ),
                      child: Text(
                        item.category ?? 'Hybrid',
                        style: AppTextStyles.text12w500Black.copyWith(
                          color: Colors.grey[900],
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.name ?? 'Chronic',
                          style: AppTextStyles.text24w800Black.copyWith(
                            color: Colors.grey[800],
                          ),
                        ),
                        sizedBoxWithHeight(8),
                        RichText(
                          text: TextSpan(
                            text: 'PHC',
                            style: AppTextStyles.text14w500Black.copyWith(
                              color: Colors.grey[800],
                            ),
                            children: [
                              TextSpan(
                                text: ' ${item.phcRange ?? '4.0 - 10.0%'}',
                                style: AppTextStyles.text14w400Black.copyWith(
                                  color: Colors.grey[700],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    RichText(
                      text: TextSpan(
                        text:
                            '\$${(item.bulkPrice?[0] ?? 40) / (item.weight?[0] ?? 1)}',
                        style: AppTextStyles.text22w800Black.copyWith(
                          color: item.colors?[2] ?? AppColors.green300,
                        ),
                        children: [
                          TextSpan(
                            text: '  /gm',
                            style: AppTextStyles.text14w500Black.copyWith(
                              color: Colors.grey[800],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              right: 8.w,
              bottom: 24.h,
              child: Image.asset(
                item.image ?? AppAssets.chronic,
                height: 190.h,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
