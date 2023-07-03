import 'package:flutter/material.dart';
import 'package:mine/home_screen.dart';
import 'package:mine/main_page.dart';

import 'colors/colors.dart';
import 'landing_page.dart';

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
      title: 'Portfolio',
      theme: ThemeData(
          fontFamily: 'Montserrat'
      ),
      home: HomeScreen(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: const <Widget>[
              LandingPage(),
            ],
          ),
        ),
      ),
    );
  }
}
