import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  final int days = 30;
  final String name="Asim";
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello World"),
      ),
      body: Center(
        child: Container(
            child: Text("Welcome to $days days of Flutter by $name")
        ),
      ),
      drawer: Drawer(),
    );
  }
}
