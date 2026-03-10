import 'package:bunny_counting_love_days/core/base/app_scroll_behavior.dart';
import 'package:bunny_counting_love_days/core/routes/app_routes.dart';
import 'package:bunny_counting_love_days/core/routes/path_routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AppContainer());
}

class AppContainer extends StatefulWidget {
  const AppContainer({super.key});

  @override
  State<AppContainer> createState() => _AppContainerState();
}

class _AppContainerState extends State<AppContainer> {
  @override
  void initState() {
    _loadSplash();
    super.initState();
  }

  void _loadSplash() {
    Future.delayed(const Duration(milliseconds: 500), () {
      NavigationKey.appKey.currentState?.pushReplacementNamed(PathRoutes.splash);
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaler: TextScaler.noScaling),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          onGenerateRoute: AppRoutes.generateRoutes,
          navigatorKey: NavigationKey.appKey,
          scrollBehavior: AppScrollBehavior(),
        ),
      ),
    );
  }
}

class NavigationKey {
  static final GlobalKey<NavigatorState> appKey = GlobalKey<NavigatorState>();

  static BuildContext get globalContext => appKey.currentContext!;
}
