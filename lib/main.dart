import 'package:ev_companion/utils/constants/color_constants/color_constants.dart';
import 'package:ev_companion/view/home/home.dart';
import 'package:ev_companion/view/loginscreen/loginscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ev companion",
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
      theme: ThemeData(
          fontFamily: 'Poppins',
          colorScheme:
              ColorScheme.fromSeed(seedColor: ColorConstants.primaryColor)),
    );
  }
}
