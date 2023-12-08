import 'package:ev_companion/view/charging_station_details/station_details.dart';
import 'package:ev_companion/view/home/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ev companion",
      debugShowCheckedModeBanner: false,
      home: StationDetailsScreen(),
      theme: ThemeData(fontFamily: 'Poppins'),
    );
  }
}
