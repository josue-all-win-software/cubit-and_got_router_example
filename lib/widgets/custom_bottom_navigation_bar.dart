import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final void Function(int)? onTap;

  const CustomBottomNavigationBar({
    super.key,
    this.onTap
  });

  @override
  State<CustomBottomNavigationBar> createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {

    return BottomNavigationBar(
      selectedFontSize: 16,
      unselectedFontSize: 14,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white,
      currentIndex: _currentIndex,
      backgroundColor: const Color.fromARGB(255, 40, 90, 133),
      onTap: (value) {
        setState(() {
          _currentIndex = value;
        });

        if(widget.onTap == null) return;

        widget.onTap!(value);
      },
      items: [
        (icon: Icons.person, label: "Users"), 
        (icon: Icons.production_quantity_limits_sharp, label: "Products")
      ].map(
        (item) =>  BottomNavigationBarItem(
          icon: Icon(
            item.icon,
            color: Colors.white,
          ),
          label: item.label
        )
      ).toList()
    );
  }
}