import 'package:FirstProject/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    double pi = 3.14;
    bool isMale = true;
    num temp = 30.5; // num can take int as well as double

    var day = "Tuesday"; // var can take any data type
    var numDays = 5;

    const const_pi = 3.14; // Can't change
    final list = [1,2,3,4]; //See difference between const and final



      return MaterialApp(
        home:HomePage()
      );

  }
}

