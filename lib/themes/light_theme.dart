part of 'themes.dart';

class _LightTheme {
  static ThemeData lightThemeData = ThemeData(
    brightness: Brightness.light,
    // fontFamily: 'Gilroy',
    textTheme: GoogleFonts.interTextTheme(),
  ).copyWith(
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
      },
    ),
    colorScheme: const ColorScheme.light().copyWith(
      primary: AppColors.green300,
      secondary: AppColors.green100,
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: Colors.black.withOpacity(0),
    ),
    toggleableActiveColor: AppColors.green300,
    appBarTheme: AppBarTheme(color: AppColors.lightBackground),
    scaffoldBackgroundColor: AppColors.lightBackground,
    errorColor: AppColors.orange300,
    focusColor: AppColors.orange200,
    hoverColor: AppColors.orange300,
    disabledColor: AppColors.orange100,
    primaryColorLight: AppColors.orange100,
    backgroundColor: AppColors.lightBackground,
    scrollbarTheme: ScrollbarThemeData(
      thumbColor: MaterialStateProperty.all(AppColors.green100),
    ),
  );
}
