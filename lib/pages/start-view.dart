import 'package:flutter/material.dart';
// import 'package:flutter_tutorials/ui/route/route_generator.dart';
import 'package:FirstProject/pages/login_page.dart';
// import 'package:flutter_tutorials/ui/views/auth_view/sign_up.dart';
import 'package:FirstProject/utils/route_generator.dart';

class StartView extends StatefulWidget {
  static const String routeName = '/start';

  @override
  _StartViewState createState() => _StartViewState();
}

class _StartViewState extends State<StartView> {
  @override
  void initState() {
    super.initState();
    _waitThenNavigateToSignUpOrHome();
  }

  _waitThenNavigateToSignUpOrHome() async {
    await Future.delayed(Duration(seconds: 3));
    GeneratedRoute.navigateTo(LoginPage.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text('Welcome', style: TextStyle(fontSize: 20)),
        ),
      ),
    );
  }
}
