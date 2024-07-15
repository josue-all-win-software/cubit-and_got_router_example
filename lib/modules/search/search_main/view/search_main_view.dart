import 'package:cubit_example/widgets/custom_navigation_drawer.dart';
import 'package:flutter/material.dart';

class SearchMainview extends StatelessWidget {
  const SearchMainview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text("Search view"),
      ),
      drawer: const CustomNavigationDrawer(
        selectedIndex: 2,
      ),
    );
  }
}