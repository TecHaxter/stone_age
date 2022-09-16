part of 'themes.dart';

// ignore: unused_element
class _DarkTheme {
  static ThemeData darkThemeData = ThemeData(
    brightness: Brightness.dark,
    fontFamily: 'Gilroy',
  ).copyWith(
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.iOS: ZoomPageTransitionsBuilder(),
        TargetPlatform.android: ZoomPageTransitionsBuilder(),
      },
    ),
    colorScheme: const ColorScheme.dark().copyWith(
      primary: AppColors.green300,
      secondary: AppColors.green100,
    ),
    toggleableActiveColor: AppColors.green300,
    appBarTheme: AppBarTheme(color: AppColors.darkBackground),
    scaffoldBackgroundColor: AppColors.darkBackground,
    errorColor: AppColors.orange300,
    focusColor: AppColors.orange200,
    hoverColor: AppColors.orange300,
    disabledColor: AppColors.orange100,
    primaryColorLight: AppColors.orange100,
    backgroundColor: AppColors.darkBackground,
    scrollbarTheme: ScrollbarThemeData(
      thumbColor: MaterialStateProperty.all(AppColors.green100),
    ),
  );
}
