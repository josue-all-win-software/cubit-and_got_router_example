import 'package:cubit_example/widgets/custom_navigation_drawer.dart';
import 'package:flutter/material.dart';

class SettingsMainView extends StatelessWidget {
  const SettingsMainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text("Settings view"),
      ),
      drawer: const CustomNavigationDrawer(
        selectedIndex: 1,
      ),
    );
  }
}