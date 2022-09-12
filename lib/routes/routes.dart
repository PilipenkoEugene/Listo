import 'package:flutter/material.dart';

import '../pages/login_page.dart';
import '../pages/main_page.dart';

final Map<String, WidgetBuilder> routes = {
  MainPage.routeName: (context) => const MainPage(),
  LoginPage.routeName: (context) => const LoginPage(),
};
