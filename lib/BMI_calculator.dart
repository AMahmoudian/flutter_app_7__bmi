import 'package:flutter/material.dart';
import 'package:flutter_app_7_bmi_calculator/BMI_result.dart';

const InactiveColor = Colors.white70;
const ActiveColor = Colors.lightGreen;

enum Gender { Male, Female }

class BMIcalculator extends StatefulWidget {
  const BMIcalculator({Key? key}) : super(key: key);

  @override
  State<BMIcalculator> createState() => _BMIcalculatorState();
}

class _BMIcalculatorState extends State<BMIcalculator> {
  Color MaleCardColor = InactiveColor;
  Color FemaleCardColor = InactiveColor;

  void UpdateColor(Gender selectedgender) {
    if (selectedgender == Gender.Male) {
      if (MaleCardColor == InactiveColor) {
        MaleCardColor = ActiveColor;
        FemaleCardColor = InactiveColor;
      } else {
        MaleCardColor = InactiveColor;
      }
    }
    if (selectedgender == Gender.Female) {
      if (FemaleCardColor == InactiveColor) {
        FemaleCardColor = ActiveColor;
        MaleCardColor = InactiveColor;
      } else {
        FemaleCardColor = InactiveColor;
      }
    }
  }

  int age = 25;
  int height = 158;
  int weight = 128;

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
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15,
              ),
              Text(
                'BMI Calculator',
                style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontSize: 25,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'What you are?',
                      style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 0.7),
                        fontSize: 15,
                        fontFamily: 'Roboto',
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  UpdateColor(Gender.Male);
                                });
                              },
                              child: Container(
                                width: 55,
                                height: 55,
                                decoration: BoxDecoration(
                                  color: MaleCardColor,
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.male,
                                  size: 38,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Male',
                              style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  UpdateColor(Gender.Female);
                                });
                              },
                              child: Container(
                                width: 55,
                                height: 55,
                                decoration: BoxDecoration(
                                  color: FemaleCardColor,
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.female,
                                  size: 38,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Female',
                              style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              const Divider(
                color: Color.fromRGBO(255, 255, 255, 0.5),
                height: 2.5,
                thickness: 2,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'What\'s your age?',
                      style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 0.7),
                        fontSize: 15,
                        fontFamily: 'Roboto',
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          child: Text(
                            '$age',
                            style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontSize: 50,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          width: 60,
                          height: 50,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          children: [
                            arrowUPward(
                              onPress: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                            arrowDOWNward(
                              onPress: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              const Divider(
                color: Color.fromRGBO(255, 255, 255, 0.5),
                height: 2.5,
                thickness: 2,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'What\'s your height?',
                          style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 0.7),
                            fontSize: 15,
                            fontFamily: 'Roboto',
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              child: Text(
                                '$height',
                                style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontSize: 50,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              height: 50,
                              width: 85,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'cm',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              children: [
                                arrowUPward(
                                  onPress: () {
                                    setState(() {
                                      height++;
                                    });
                                  },
                                ),
                                arrowDOWNward(
                                  onPress: () {
                                    setState(() {
                                      height--;
                                    });
                                  },
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'What\'s your weight?',
                          style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 0.7),
                            fontSize: 15,
                            fontFamily: 'Roboto',
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              child: Text(
                                '$weight',
                                style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontSize: 50,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              width: 85,
                              height: 50,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'kg',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              children: [
                                arrowUPward(
                                  onPress: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                ),
                                arrowDOWNward(
                                  onPress: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return BMIresult();
                        },
                      ),
                    );
                  },
                  child: Text(
                    'Calculate your BMI',
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 0.9),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class arrowDOWNward extends StatelessWidget {
  arrowDOWNward({ required this.onPress});

  final VoidCallback  onPress;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      child: Icon(
        Icons.arrow_downward_rounded,
        color: Colors.white,
      ),
      style: ElevatedButton.styleFrom(
        shape: CircleBorder(),
      ),
    );
  }
}

class arrowUPward extends StatelessWidget {
  arrowUPward({ required this.onPress});

  final VoidCallback  onPress;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      child: Icon(
        Icons.arrow_upward_rounded,
        color: Colors.white,
      ),
      style: ElevatedButton.styleFrom(
        shape: CircleBorder(),
      ),
    );
  }
}
