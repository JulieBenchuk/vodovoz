import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'domain/domain.dart';

@RoutePage()
class AppWidget extends StatefulWidget {
  const AppWidget({super.key, required this.title});
  final String title;

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  Future? _data;
  int _currentIndex = 0;

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
            return Scaffold(
              bottomNavigationBar: BottomNavigationBar(
                currentIndex: _currentIndex,
                type: BottomNavigationBarType.fixed,
                backgroundColor: Colors.white,
                selectedItemColor: const Color(0xFF008DD2),
                unselectedItemColor: Colors.black87,
                selectedFontSize: 14,
                unselectedFontSize: 14,
                onTap: (value) {
                  setState(() => _currentIndex = value);
                },
                items: const [
                  BottomNavigationBarItem(
                    label: 'Товары',
                    icon: Icon(Icons.invert_colors_rounded),
                  ),
                  BottomNavigationBarItem(
                    label: 'Корзина',
                    icon: Icon(Icons.add_shopping_cart, size: 30,),
                  ),
                  BottomNavigationBarItem(
                    label: 'Заказы',
                    icon: Icon(Icons.published_with_changes),
                  ),
                ],
              ),
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

  Future<dynamic> _fetchServerIP() async =>
      await Domain().fetchServerIP();
}
