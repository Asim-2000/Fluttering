import 'package:FirstProject/utils/home_view_model.dart';
import 'package:FirstProject/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:FirstProject/utils/create_referral_code.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Asim";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello World"),
      ),
      body: Consumer<HomeViewModel>(
          builder: (_, model, child) =>
              CreateReferralCode((String referralCode) {
                model.deeplinkApi.createReferralLink(referralCode);
                return Container(child: Center(child: Text("Home")));
              })),
      drawer: MyDrawer(),
    );
  }
}
