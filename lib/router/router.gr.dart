// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    BasketRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const BasketScreen(),
      );
    },
    ProductListRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProductListScreen(),
      );
    },
    OrdersRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OrdersScreen(),
      );
    },
    AppWidget.name: (routeData) {
      final args = routeData.argsAs<AppWidgetArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: AppWidget(
          key: args.key,
          title: args.title,
        ),
      );
    },
  };
}

/// generated route for
/// [BasketScreen]
class BasketRoute extends PageRouteInfo<void> {
  const BasketRoute({List<PageRouteInfo>? children})
      : super(
          BasketRoute.name,
          initialChildren: children,
        );

  static const String name = 'BasketRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProductListScreen]
class ProductListRoute extends PageRouteInfo<void> {
  const ProductListRoute({List<PageRouteInfo>? children})
      : super(
          ProductListRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProductListRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OrdersScreen]
class OrdersRoute extends PageRouteInfo<void> {
  const OrdersRoute({List<PageRouteInfo>? children})
      : super(
          OrdersRoute.name,
          initialChildren: children,
        );

  static const String name = 'OrdersRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [AppWidget]
class AppWidget extends PageRouteInfo<AppWidgetArgs> {
  AppWidget({
    Key? key,
    required String title,
    List<PageRouteInfo>? children,
  }) : super(
          AppWidget.name,
          args: AppWidgetArgs(
            key: key,
            title: title,
          ),
          initialChildren: children,
        );

  static const String name = 'AppWidget';

  static const PageInfo<AppWidgetArgs> page = PageInfo<AppWidgetArgs>(name);
}

class AppWidgetArgs {
  const AppWidgetArgs({
    this.key,
    required this.title,
  });

  final Key? key;

  final String title;

  @override
  String toString() {
    return 'AppWidgetArgs{key: $key, title: $title}';
  }
}
