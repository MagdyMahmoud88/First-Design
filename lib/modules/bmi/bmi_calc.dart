import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:new_job/resualt_bmi.dart';

class BmiCalc extends StatefulWidget {
  const BmiCalc({Key? key}) : super(key: key);

  @override
  _BmiCalcState createState() => _BmiCalcState();
}

class _BmiCalcState extends State<BmiCalc> {
  bool isMale = true;
double values = 150.0;
int weight = 40 ;int age = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: const Text("BMI CALCULATOR"),
      ),
      body:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(
                        () {
                          isMale = true;
                        },
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: isMale ? Colors.blue : Colors.white),
                      child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: const Image(
                              height: 100,
                              image: AssetImage("assets/images/male.png"),
                            ),
                          ),
                          const Text(
                            "MALE",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: "Quintessential-Regular",
                                fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {

                        isMale = false;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: !isMale ? Colors.blue :  Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Image(
                            height: 120,
                            image: AssetImage("assets/images/female.png"),
                          ),
                          Text(
                            "Female",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: "Quintessential-Regular",
                                fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            // seconde container
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    "HEIGHT",
                    style: TextStyle(
                        fontFamily: "Quintessential-Regular",
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    mainAxisAlignment: MainAxisAlignment.center,
                    textBaseline: TextBaseline.alphabetic,
                    children:  [
                      Text(
                        "${values.round()}",
                        style: const TextStyle(
                            fontSize: 35, fontWeight: FontWeight.w900),
                      ),
                      const   SizedBox(
                        width: 5,
                      ),
                      const    Text(
                        'cm',
                      )
                    ],
                  ),
                  Slider(
                    value: values,
                    onChanged: (val) {
                      setState(() {
                        values = val ;

                      });
                    },
                    min: 80,
                    max: 220,
                  )
                ],
              ),
            ),
          ),
        ),
        // third container
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "WEIGHT",
                          style: TextStyle(
                              fontFamily: "Quintessential-Regular",
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                         Text(
                          "${weight}",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w900),
                        ),
                        Row(
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              child: const Icon(Icons.remove),
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              mini: true,
                            ),
                            FloatingActionButton(
                              child: const Icon(Icons.add),
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              mini: true,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                // AGE SCREEN

                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "AGE",
                          style: TextStyle(
                              fontFamily: "Quintessential-Regular",
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                         Text(
                          "$age",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w900),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              child: const Icon(Icons.remove),
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                              mini: true,
                            ),
                            FloatingActionButton(
                              child: const Icon(Icons.add),
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              mini: true,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: SizedBox(
            height: 60.0,
            width: double.infinity,
            child: MaterialButton(
              color: Colors.white,
              onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context)=> ResualtBmi(
                  gender: isMale  ,
                  resualt: 50,
                  age: age,
                )
              ));
              },
              child: const Text(
                "CALCULATOR ",
                style: TextStyle(
                    fontFamily: "Quintessential-Regular",
                    fontSize: 20.5,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
