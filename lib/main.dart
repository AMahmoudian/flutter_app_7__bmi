import 'package:flutter/material.dart';
import 'package:flutter_app_7_bmi_calculator/BMI_calculator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        scaffoldBackgroundColor: Color(0xFF353535),
      ),
      home: BMIcalculator(),
    );
  }
}
