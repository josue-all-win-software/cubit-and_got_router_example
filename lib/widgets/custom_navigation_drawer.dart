import 'package:cubit_example/global/navigation_drawer_items.dart';
import 'package:flutter/material.dart';

class CustomNavigationDrawer extends StatefulWidget {
  const CustomNavigationDrawer({super.key});

  @override
  State<CustomNavigationDrawer> createState() => _CustomNavigationDrawerState();
}

class _CustomNavigationDrawerState extends State<CustomNavigationDrawer> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return NavigationDrawer(
      selectedIndex: _selectedIndex,
      onDestinationSelected: (index) {
        setState(() {
          _selectedIndex = index;
        });
      },
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            "Menu",
            style: textTheme.titleLarge,
          ),
        ),
        ...navigationDrawerItems.map(
          (item) => NavigationDrawerDestination(
            icon: Icon(
              item.icon
            ), 
            label: Text(
              item.label
            )
          ),
        )
      ]
    );
  }
}