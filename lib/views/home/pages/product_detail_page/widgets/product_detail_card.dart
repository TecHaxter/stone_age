import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:stone_age/data/constants/constants.dart';
import 'package:stone_age/data/models/models.dart';
import 'package:stone_age/utils/utils.dart';
import 'package:stone_age/views/common/common.dart';

class ProductDetailCard extends StatelessWidget {
  final StoreItemModel item;
  const ProductDetailCard({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 344.h,
      width: double.maxFinite,
      child: Stack(
        children: [
          Positioned(
            top: 32.h,
            left: 32.w,
            child: InkWell(
              onTap: () {
                AppEnvironment.navigator.pop();
              },
              child: const Icon(
                LineIcons.times,
              ),
            ),
          ),
          Positioned(
            top: 72.h,
            left: 0,
            right: 104.w,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                  right: Radius.circular(24.r),
                ),
                color: item.colors?[0] ?? AppColors.green100,
              ),
              padding: EdgeInsets.all(32.r),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 140.h,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 16.w,
                            vertical: 8.h,
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
                        Text(
                          item.name ?? 'Chronic',
                          style: AppTextStyles.text28w900Black.copyWith(
                            color: Colors.grey[800],
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                text: 'PHC',
                                style: AppTextStyles.text14w500Black.copyWith(
                                  color: Colors.grey[800],
                                ),
                                children: [
                                  TextSpan(
                                    text: ' ${item.phcRange ?? '4.0 - 10.0%'}',
                                    style:
                                        AppTextStyles.text14w400Black.copyWith(
                                      color: Colors.grey[700],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            sizedBoxWithHeight(8),
                            RichText(
                              text: TextSpan(
                                text: 'EBD',
                                style: AppTextStyles.text14w500Black.copyWith(
                                  color: Colors.grey[800],
                                ),
                                children: [
                                  TextSpan(
                                    text: ' ${item.ebdRange ?? '4.0 - 10.0%'}',
                                    style:
                                        AppTextStyles.text14w400Black.copyWith(
                                      color: Colors.grey[700],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        width: 40.r,
                        height: 40.r,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          border: Border.all(
                            color: item.colors?[2] ?? AppColors.green300,
                          ),
                        ),
                        child: Icon(
                          LineIcons.sms,
                          size: 16.sp,
                        ),
                      ),
                      sizedBoxWithWidth(16),
                      Container(
                        width: 40.r,
                        height: 40.r,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          border: Border.all(
                            color: item.colors?[2] ?? AppColors.green300,
                          ),
                        ),
                        child: Icon(
                          (item.liked ?? false)
                              ? LineIcons.heartAlt
                              : LineIcons.heart,
                          size: 16.sp,
                        ),
                      ),
                      sizedBoxWithWidth(16),
                      Container(
                        width: 40.r,
                        height: 40.r,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          border: Border.all(
                            color: item.colors?[2] ?? AppColors.green300,
                          ),
                        ),
                        child: Icon(
                          LineIcons.share,
                          size: 16.sp,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            right: -40.w,
            top: 0,
            bottom: 0,
            child: Image.asset(
              item.image ?? AppAssets.chronic,
              height: double.maxFinite,
              width: 200.w,
              fit: BoxFit.contain,
            ),
          )
        ],
      ),
    );
  }
}
