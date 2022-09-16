import 'package:flutter/material.dart';
import 'package:stone_age/utils/utils.dart';

class AppButtonSpaceBetween extends StatelessWidget {
  final Color color300;
  final Widget firstChild;
  final Widget secondChild;
  final VoidCallback onTap;
  const AppButtonSpaceBetween({
    Key? key,
    required this.color300,
    required this.firstChild,
    required this.secondChild,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          color: color300,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            firstChild,
            secondChild,
          ],
        ),
      ),
    );
  }
}
