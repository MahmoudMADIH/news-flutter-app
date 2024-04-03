import 'package:flutter/material.dart';
import 'package:newsapp/homeScreen/homepage.dart';

import 'homeScreen/testHomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
           routes: {
        HomeScreen.Route_Name:(context)=>HomeScreen(),
      },
      initialRoute: HomeScreen.Route_Name,
    );
  }
}


