import 'package:bunny_counting_love_days/core/routes/path_routes.dart';
import 'package:bunny_counting_love_days/features/splash/views/splash_page.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case PathRoutes.splash:
        return _buildRoute(const SplashPage(), settings); // Replace with actual SplashPage()
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(body: Center(child: Text('No route defined'))),
        );
    }
  }

  static MaterialPageRoute<T> _buildRoute<T>(Widget child, RouteSettings settings) {
    return MaterialPageRoute<T>(settings: settings, builder: (context) => child);
  }
}
