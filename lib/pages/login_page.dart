import 'package:FirstProject/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:FirstProject/utils/app-field.dart';

class LoginPage extends StatelessWidget {
  static const String routeName = '/signUp';
  final String referrarCode;
  LoginPage({Key key, this.referrarCode}) : super(key: key);

  final TextEditingController referralCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    print(referrarCode);
    referralCodeController.text = referrarCode ?? '';
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: 400,
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(labelText: "username"),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(labelText: "Password"),
              ),
              SizedBox(height: 10),
              // TextField(
              //   decoration: InputDecoration(labelText: "referralCode"),
              //   controller: referralCodeController,
              // ),
              AppTextField(
                title: 'ReferralCode',
                controller: referralCodeController,
              ),
              SizedBox(height: 10),
              RaisedButton(
                child: Text('SignUp'),
                onPressed: () {
                  Navigator.pushNamed(context, MyRoutes.homeRoute);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
