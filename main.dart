import 'package:flutter/material.dart';

import 'package:test_pro/introduction/About_us.dart';
import 'package:test_pro/introduction/introduction.dart';
import 'package:test_pro/login/login_screen.dart';

import 'package:test_pro/register/register.dart';

import 'HomePage.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => const IntroductionScreen(),

    },
  ));
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isDarkMode = false;

  void _toggleDarkMode() {
    setState(() {
      _isDarkMode = !_isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _isDarkMode ? ThemeData.dark() : ThemeData.light(),
      home:  const IntroductionScreen(),
    );
  }
}
