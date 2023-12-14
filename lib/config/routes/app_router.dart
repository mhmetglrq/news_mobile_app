import 'package:flutter/material.dart';

import '../../features/bottomNavBar/presentation/bottom_navbar.dart';
import '../../features/news/presentation/news.dart';
import '../../features/readMore/presentation/read_more.dart';
import '../../features/splash/presentation/splash.dart';
import 'app_route_names.dart';

class AppRouter {
  static Route onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case AppRouteNames.defaultPage:
        return _materialRoute(const Splash());

      case AppRouteNames.newsPage:
        return _materialRoute(const News());

      case AppRouteNames.bottomNavBar:
        return _materialRoute(const BottomNavBar());

      case AppRouteNames.splashPage:
        return _materialRoute(const Splash());

      case AppRouteNames.readMorePage:
        return _materialRoute(const ReadMore());

      default:
        return _materialRoute(const Splash());
    }
  }

  static Route<dynamic> _materialRoute(Widget view) {
    return MaterialPageRoute(builder: (_) => view);
  }
}
