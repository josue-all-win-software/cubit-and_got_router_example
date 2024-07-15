import 'package:cubit_example/widgets/custom_bottom_navigation_bar.dart';
import 'package:cubit_example/widgets/custom_navigation_drawer.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainMenuView extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const MainMenuView({
    super.key,
    required this.navigationShell
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const CustomNavigationDrawer(),
      body: navigationShell,
      bottomNavigationBar: CustomBottomNavigationBar(
        onTap: (index) => navigationShell.goBranch(index),
      ),
    );
  }
}