import 'package:flutter/material.dart';
import 'package:rick_and_morty/presentation/screens/screens.dart';

class ScreenPaths {
  ScreenPaths._();

  static const String dashboard = '/dashboard';
}

class CustomRouter {
  CustomRouter._();

  static Map<String, WidgetBuilder> routes = {
    ScreenPaths.dashboard: (context) => const DashboardPage(),
  };
}
