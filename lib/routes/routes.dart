import 'package:stone_age/routes/route_arguments.dart';
import 'package:flutter/material.dart';
import 'package:stone_age/views/views.dart';

part 'home_route.dart';

class Routes {
  static String splash = 'splash';
  static String currentRoute = HomeRoute.homeLeading;

  static final routes = <String>{
    currentRoute,
  };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;

    currentRoute = settings.name ?? '/';
    Widget child;
    if (currentRoute.startsWith(HomeRoute.homeLeading)) {
      child = HomeRoute.getPage(currentRoute, args);
    } else if (currentRoute.startsWith(splash)) {
      child = SplashScreen();
    } else {
      child = const PageNotFoundScreen();
    }
    return MaterialPageRoute(
      builder: (_) => child,
      settings: settings,
    );
  }
}
