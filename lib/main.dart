import 'package:cubit_example/config/router/app_router.dart';
import 'package:cubit_example/config/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.getTheme(
        colorSchemeSeed: Colors.blue
      ),
      routerConfig: appRouter,
    );
  }
}