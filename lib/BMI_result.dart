import 'package:flutter/material.dart';

class BMIresult extends StatefulWidget {
  const BMIresult({Key? key}) : super(key: key);

  @override
  State<BMIresult> createState() => _BMIresultState();
}

class _BMIresultState extends State<BMIresult> {

  double bmi_result = 22.9;

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
                'Your BMI',
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
              Image.asset('assets/images/bmi.png',
              width: 100,
              height: 100,
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                '$bmi_result',
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
                'You have Normal body weight !',
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
