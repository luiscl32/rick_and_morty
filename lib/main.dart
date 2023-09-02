import 'package:flutter/material.dart';
import 'package:rick_and_morty/presentation/theme/theme.dart';
import 'package:rick_and_morty/router.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: CustomTheme.theme,
      routes: CustomRouter.routes,
      initialRoute: ScreenPaths.dashboard,
    );
  }
}
