part of 'routes.dart';

class HomeRoute {
  static const homeLeading = '/';
  static const homeScreen = homeLeading + 'homeScreen';
  static const productDetailScreen = homeLeading + 'productDetailScreen';
  static const cartScreen = homeLeading + 'cartScreen';
  static final homeRoutes = <String>{homeScreen};

  static Widget getPage(String currentRoute, Object? args) {
    Widget child;
    switch (currentRoute) {
      case HomeRoute.homeScreen:
        // child = RouteArguments.misTypedArgsRoute<homeHomeArgs>(args);
        child = const HomeScreen();
        break;
      case HomeRoute.productDetailScreen:
        if (RouteArguments.hasInvalidArgs<ProductDetailPageArgs>(args!)) {
          child = RouteArguments.misTypedArgsRoute<ProductDetailPageArgs>(args);
        } else {
          child = ProductDetailPage(
            args: args as ProductDetailPageArgs,
          );
        }
        break;
      case HomeRoute.cartScreen:
        if (RouteArguments.hasInvalidArgs<CartPageArgs>(args!)) {
          child = RouteArguments.misTypedArgsRoute<CartPageArgs>(args);
        } else {
          child = CartPage(
            args: args as CartPageArgs,
          );
        }
        break;
      default:
        child = const PageNotFoundScreen();
    }
    return child;
  }
}
