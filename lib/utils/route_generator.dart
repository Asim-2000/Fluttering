import 'package:FirstProject/pages/home_page.dart';
import 'package:FirstProject/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:FirstProject/pages/login_page.dart';

class GeneratedRoute {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  static Future<dynamic> navigateTo(String routeName, {Object args}) {
    return navigatorKey.currentState.pushNamed(routeName, arguments: args);
  }

  static goBack() {
    return navigatorKey.currentState.pop();
  }

  static Route<dynamic> onGenerate(RouteSettings settings) {
    final arg = settings.arguments;
    switch (settings.name) {
      case MyRoutes.homeRoute:
        return MaterialPageRoute(builder: (_) => HomePage());
        break;
      case MyRoutes.loginRoute:
        if (arg is String) {
          return MaterialPageRoute(
              builder: (_) => LoginPage(referrarCode: arg));
        }
        return MaterialPageRoute(builder: (_) => LoginPage());

      default:
        return _onPageNotFound();
    }
  }

  static Route<dynamic> _onPageNotFound() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        body: Center(
          child: Text('Page Not Found'),
        ),
      ),
    );
  }
}
