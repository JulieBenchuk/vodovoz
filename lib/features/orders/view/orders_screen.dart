import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:vodovoz/ui/widgets/main_app_bar.dart';

@RoutePage()
class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MainAppBar(
        title: Text('Заказы'),
      ),
      body: Stack(children: [Center(child: Text("ЗАКАЗЫ"))]),
    );
  }
}
