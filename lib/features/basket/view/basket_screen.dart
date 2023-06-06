import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:vodovoz/ui/widgets/main_app_bar.dart';

@RoutePage()
class BasketScreen extends StatefulWidget {
  const BasketScreen({super.key});

  @override
  State<BasketScreen> createState() => _BasketScreenState();
}

class _BasketScreenState extends State<BasketScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MainAppBar(
        title: Text('КОРЗИНА'),
      ),
      body: Stack(children: [Center(child: Text("КОРЗИНА"))]),
    );
  }
}
