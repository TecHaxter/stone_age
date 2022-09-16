import 'package:flutter/material.dart';
import 'package:stone_age/data/constants/app_colors.dart';
import 'package:stone_age/data/constants/app_text_styles.dart';
import 'package:stone_age/utils/utils.dart';
import 'package:stone_age/views/common/common.dart';

class AppBottomSheetItemTile extends StatelessWidget {
  final Function(int) onTap;
  final int thisPage;
  final int currentPage;
  final String name;
  final IconData iconData;
  const AppBottomSheetItemTile({
    Key? key,
    required this.name,
    required this.thisPage,
    required this.currentPage,
    required this.iconData,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(thisPage),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
        decoration: BoxDecoration(
          border: Border.all(
            color: thisPage == currentPage
                ? AppColors.lightGray
                : AppColors.lightBackground,
          ),
          borderRadius: BorderRadius.circular(24.r),
        ),
        child: Row(
          children: [
            Icon(
              iconData,
              color: thisPage == currentPage
                  ? AppColors.theBlack
                  : AppColors.darkGray,
              size: 18.sp,
            ),
            if (thisPage == currentPage) ...{
              sizedBoxWithWidth(8),
              Text(
                name,
                style: AppTextStyles.text12w600Black,
              ),
            },
          ],
        ),
      ),
    );
  }
}
