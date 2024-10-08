import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:vodovoz/router/router.dart';
import 'domain/domain.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({super.key});

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  Future? _data;

  @override
  void initState() {
    _data = _fetchServerIP();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _data,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return AutoTabsScaffold(
              routes: const [
                ProductListRoute(),
                OrdersRoute(),
                BasketRoute(),
              ],
              bottomNavigationBuilder: (_, tabsRouter) {
                return BottomNavigationBar(
                  currentIndex: tabsRouter.activeIndex,
                  type: BottomNavigationBarType.fixed,
                  backgroundColor: Colors.white,
                  selectedItemColor: const Color(0xFF008DD2),
                  unselectedItemColor: Colors.black87,
                  selectedFontSize: 14,
                  unselectedFontSize: 14,
                  onTap: tabsRouter.setActiveIndex,
                  items: const [
                    BottomNavigationBarItem(
                      label: 'Товары',
                      icon: Icon(Icons.invert_colors_rounded),
                    ),
                    BottomNavigationBarItem(
                      label: 'Корзина',
                      icon: Icon(
                        Icons.add_shopping_cart,
                        size: 30,
                      ),
                    ),
                    BottomNavigationBarItem(
                      label: 'Заказы',
                      icon: Icon(Icons.published_with_changes),
                    ),
                  ],
                );
              },
            );

          } else if (snapshot.hasError) {
            return const Directionality(
                textDirection: TextDirection.rtl,
                child: Center(child: Text('Failed to fetch data from server')));
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        });
  }

  Future<dynamic> _fetchServerIP() async => await Domain().fetchServerIP();
}
