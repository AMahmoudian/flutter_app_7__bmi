import 'package:flutter/material.dart';
import 'CalcU.dart';

class BMIresult extends StatelessWidget {
  BMIresult({required this.BMIf, required this.Textf});

  final String BMIf;
  final String Textf;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 20,
          ),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Your BMI:',
                style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 0.7),
                  fontFamily: 'Roboto',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Image.asset(
                'assets/images/bmi.png',
                width: 100,
                height: 100,
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                BMIf,
                style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontFamily: 'Roboto',
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                Textf,
                style: TextStyle(
                  color: Colors.lightGreen[300],
                  fontFamily: 'Roboto',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
