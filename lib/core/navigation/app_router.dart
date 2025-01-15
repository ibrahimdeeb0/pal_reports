import 'package:flutter/material.dart';
import 'package:pal_report/features/auth/routes/auth_routes.dart';
import 'package:pal_report/features/home/home_routes.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    // final args = settings.arguments;

    if (settings.name == AuthRoutes.auth) {
      return AuthRoutes.generateRoute(settings);
    }

    if (settings.name == HomeRoutes.homeScreen) {
      return HomeRoutes.generateRoute(settings);
    }

    // Default: Undefined Route
    return null;
  }
}
