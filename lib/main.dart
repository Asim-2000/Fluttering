import 'package:FirstProject/get_it/get_it.dart';
// import 'package:FirstProject/pages/home_page.dart';
// import 'package:FirstProject/pages/login_page.dart';
import 'package:FirstProject/utils/route_generator.dart';
import 'package:FirstProject/utils/routes.dart';
import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'package:FirstProject/utils/home_view_model.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  setUpGetIt();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider.value(value: HomeViewModel())],
      child: MaterialApp(
        initialRoute: MyRoutes.loginRoute,
        onGenerateRoute: GeneratedRoute.onGenerate,
      ),
      // child: MaterialApp(
      //   // home: HomePage(),
      //   themeMode: ThemeMode.light,
      //   theme: ThemeData(
      //       primarySwatch: Colors.deepPurple,
      //       fontFamily: GoogleFonts.lato().fontFamily),
      //   darkTheme: ThemeData(
      //     brightness: Brightness.dark,
      //   ),
      //   initialRoute: MyRoutes.loginRoute,
      //   onGenerateRoute: GeneratedRoute.onGenerate,
      //   routes: {
      //     "/": (context) => LoginPage(),
      //     MyRoutes.homeRoute: (context) => HomePage(),
      //     MyRoutes.loginRoute: (context) => LoginPage()
      //   },
      // ),
    );
  }
}
