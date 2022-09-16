import 'package:flutter/material.dart';
import 'package:cupertino_back_gesture/cupertino_back_gesture.dart';
import 'package:stone_age/data/constants/constants.dart';
import 'package:stone_age/routes/routes.dart';
import 'package:stone_age/themes/themes.dart';
import 'package:stone_age/utils/utils.dart';

class StoneAgeApp extends StatefulWidget {
  const StoneAgeApp({Key? key}) : super(key: key);

  @override
  State<StoneAgeApp> createState() => _StoneAgeAppState();
}

class _StoneAgeAppState extends State<StoneAgeApp> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: AppEnvironment.appTheme,
      builder: (_, __, ___) {
        return ValueListenableBuilder(
          valueListenable: AppEnvironment.swipeWidth,
          builder: (_, double swipeWidth, ___) {
            return BackGestureWidthTheme(
              backGestureWidth: BackGestureWidth.fraction(swipeWidth),
              child: MaterialApp(
                color: AppColors.isDark
                    ? AppColors.darkBackground
                    : AppColors.lightBackground,
                builder: (context, child) {
                  final mediaQueryData = MediaQuery.of(context);
                  var ch = MediaQuery(
                    // Set the default textScaleFactor to 1.0 for
                    // the whole subtree.
                    data: mediaQueryData.copyWith(textScaleFactor: 1.0),
                    child: child!,
                  );
                  return ScrollConfiguration(
                    behavior: const ScrollBehaviorImpl(),
                    child: ch,
                  );
                },
                debugShowCheckedModeBanner: false,
                onGenerateRoute: Routes.onGenerateRoute,
                navigatorKey: AppEnvironment.rootNavigationKey,
                navigatorObservers: [
                  AppEnvironment.routeObserver,
                ],
                theme: themeData,
                initialRoute: Routes.splash,
              ),
            );
          },
        );
      },
    );
  }
}
