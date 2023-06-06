import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:vodovoz/ui/theme/blueTheme.dart';
import 'app.dart';

late bool loginStatus;
/*void getInitialData() async {
  var stringBox = await Hive.openBox<String>('User');
  loginStatus = false;
  User.name = stringBox.get('name');
  if (User.name != null) {
    loginStatus = true;
    User.name = stringBox.get('name');
    User.tel = stringBox.get('tel');
    User.fio = stringBox.get('fio');
    User.password = stringBox.get('password');
    User.email = stringBox.get('email');
  }
}*/

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Доставка воды',
      theme: blueTheme,
      home: const AppWidget(title: 'Доставка воды'),
    );
  }
}

