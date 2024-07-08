import '/Helper/app_const.dart';
import '/View/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App 1',
      theme: ThemeData(
        fontFamily: 'Mulish',
        primaryColor: AppConst.primaryColor,
        primarySwatch: AppConst.primarySwatch
      ),
      home: const SplashScreen(),
    );
  }
}
