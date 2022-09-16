import 'package:flutter/material.dart';
import 'package:stone_age/data/constants/constants.dart';
import 'package:stone_age/utils/utils.dart';
import 'package:stone_age/views/views.dart';

class StoreNavBar extends StatelessWidget {
  const StoreNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 16.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            AppStrings.store,
            style: AppTextStyles.text28w900Black,
          ),
          Row(
            children: [
              SizedBox(
                width: 24.r,
                height: 24.r,
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 0,
                      left: 0,
                      child: Icon(
                        Icons.notifications_outlined,
                        size: 24.sp,
                      ),
                    ),
                  ],
                ),
              ),
              sizedBoxWithWidth(16),
              SizedBox(
                width: 24.r,
                height: 24.r,
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 0,
                      left: 0,
                      child: Icon(
                        Icons.store_outlined,
                        size: 24.sp,
                      ),
                    ),
                    Positioned(
                      right: 0,
                      top: 0,
                      child: CircleAvatar(
                        radius: 6.r,
                        backgroundColor: AppColors.green300,
                        child: Text(
                          '12',
                          style: AppTextStyles.text8w600White,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
