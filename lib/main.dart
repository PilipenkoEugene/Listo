import 'package:flutter/material.dart';
import 'package:listo/consts/consts.dart';
import 'package:listo/routes/routes.dart';

import '../pages/login_page.dart';
import '../pages/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Listo',
      theme: ThemeData(
        fontFamily: 'Glacial',
      ),
      routes: routes,
      initialRoute: isAuth ? MainPage.routeName : LoginPage.routeName,
    );
  }
}
