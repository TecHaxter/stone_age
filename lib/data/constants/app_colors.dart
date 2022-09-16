import 'package:stone_age/utils/utils.dart';
import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static bool get isDark => AppEnvironment.isDark;

  static Color get darkBackground => const Color(0xff263140);
  static Color get lightBackground => const Color(0xffFFFFFF);

  static Color get lightGray => const Color(0xffEDF0F4);
  static Color get darkGray => const Color(0xffC0C0C0);

  static Color get theBlack => const Color(0xff000000);
  static Color get theWhite => const Color(0xffFFFFFF);

  static Color get green100 => const Color(0xffECFBF2);
  static Color get green200 => const Color(0xffC3F5D5);
  static Color get green300 => const Color(0xff3DD973);
  static Color get orange100 => const Color(0xffFFF5ED);
  static Color get orange200 => const Color(0xffFEDBC7);
  static Color get orange300 => const Color(0xffF25F29);
  static Color get blue100 => const Color(0xffEFF9FF);
  static Color get blue200 => const Color(0xffCCEFFD);
  static Color get blue300 => const Color(0xff5DBEF5);

  static Color get purple100 => const Color(0xffEFEBFF);
  static Color get purple200 => const Color(0xffEDD2FF);
  static Color get purple300 => const Color(0xffD976FF);
}
