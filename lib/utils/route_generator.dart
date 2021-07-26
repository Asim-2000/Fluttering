import 'package:FirstProject/pages/home_page.dart';
import 'package:FirstProject/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:FirstProject/pages/login_page.dart';
import 'package:FirstProject/pages/start-view.dart';

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
      case StartView.routeName:
        return MaterialPageRoute(builder: (_) => StartView());
        break;
      case MyRoutes.loginRoute:
        if (arg is String) {
          return MaterialPageRoute(
              builder: (_) => LoginPage(referrarCode: arg));
        }
        return MaterialPageRoute(builder: (_) => LoginPage());

      case HomePage.routeName:
        return MaterialPageRoute(builder: (_) => HomePage());
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
