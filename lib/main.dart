import 'package:flutter/material.dart';
import 'package:som3a_app_28_2_22/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Chat App',
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}