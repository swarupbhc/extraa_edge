import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../views/screens/home_screen.dart';
import '../views/screens/rocket_details_screen.dart';

class AppRoutes {
  static const String home = "/home";
  static const String rocketDetails = "/rocket_details:id";
  static final GoRouter router =
      GoRouter(initialLocation: home, routes: <GoRoute>[
    GoRoute(
      path: home,
      name: home,
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
    ),
    GoRoute(
      path: rocketDetails,
      name: rocketDetails,
      builder: (BuildContext context, GoRouterState state) {
        return RocketDetailsScreen(params: state.params);
      },
    ),
  ]);
}
