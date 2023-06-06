import 'package:auto_route/auto_route.dart';
import 'package:vodovoz/features/basket/view/basket_screen.dart';
import 'package:vodovoz/features/orders/view/orders_screen.dart';
import 'package:vodovoz/features/product_list/view/product_list_screen.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: ProductListRoute.page, path: '/'),
    AutoRoute(page: OrdersRoute.page),
    AutoRoute(page: BasketRoute.page),
  ];
}