import 'package:flutter/material.dart';
import 'package:vodovoz/router/router.dart';
import 'package:vodovoz/ui/theme/blueTheme.dart';

late bool loginStatus;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
      title: 'Доставка воды',
      theme: blueTheme,
    );
  }
}

