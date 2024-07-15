import 'package:cubit_example/global/navigation_drawer_items.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomNavigationDrawer extends StatefulWidget {
  final int? selectedIndex;

  const CustomNavigationDrawer({
    super.key,
    this.selectedIndex
  });

  @override
  State<CustomNavigationDrawer> createState() => _CustomNavigationDrawerState();
}

class _CustomNavigationDrawerState extends State<CustomNavigationDrawer> {
  late int _selectedIndex;

  @override
  void initState() {
    _selectedIndex = widget.selectedIndex ?? 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return NavigationDrawer(
      selectedIndex: _selectedIndex,
      onDestinationSelected: (index) {
        setState(() {
          _selectedIndex = index;
        });

        if(index >= navigationDrawerItems.length) return;

        final route = navigationDrawerItems[index].route;

        context.go(route);
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