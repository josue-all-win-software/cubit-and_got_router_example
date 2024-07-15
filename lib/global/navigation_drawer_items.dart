import 'package:cubit_example/config/router/app_routes.dart';
import 'package:flutter/material.dart';

final navigationDrawerItems = [
  (icon: Icons.home, label: "Home", route: AppRoutes.userRoute),
  (icon: Icons.settings, label: "Settings", route: AppRoutes.settingsRoute),
  (icon: Icons.search, label: "Search", route: AppRoutes.searchRoute)
];