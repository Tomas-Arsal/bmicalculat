import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Bmi_Result.dart';

class Bmi_Calculator extends StatefulWidget {
  const Bmi_Calculator({Key? key}) : super(key: key);

  @override
  State<Bmi_Calculator> createState() => _Bmi_CalculatorState();
}

class _Bmi_CalculatorState extends State<Bmi_Calculator> {
  bool isMale = true ;
  double height = 180 ;
  double weight = 50 ;
  int age = 30 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BMI Calculator',
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                   Expanded(
                    child: Padding(
                      padding:  const EdgeInsets.all(10.0),
                      child: GestureDetector(
                       onTap: (){
                         setState(() {
                           isMale = true ;
                         });
                       },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: isMale ? Colors.blue : Colors.grey,
                          ),
                          child: Column(
                            children: const [
                              Icon(
                                Icons.male,
                                size: 50.0,
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                'Male',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale = false ;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: isMale ? Colors.grey : Colors.blue,
                        ),
                        child: Column(
                          children: const [
                            Icon(
                              Icons.female,
                              size: 50.0,
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'Female',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 30.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.grey,
                ),
                child: Column(
                  children: [
                    const Text(
                      'Height',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      mainAxisAlignment: MainAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,
                      children:  [
                        Text(
                          '${height.round()}',
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 30.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Text(
                          'CM',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Slider(
                        value: height,
                        min: 100,
                        max: 700,
                        onChanged: (value) {
                         setState(() {
                           height = value ;
                         });
                        }),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.grey,
                    ),
                    child: Column(
                      children: [
                        const Text(
                          'Age',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                         Text(
                          '${age.round()}',
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 30.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  age-- ;
                                });
                              },
                              mini: true,
                              child: const Icon(
                                Icons.minimize,
                              ),
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  age++ ;
                                });
                              },
                              mini: true,
                              child: const Icon(
                                Icons.add,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 10.0,) ,
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.grey,
                    ),
                    child: Column(
                      children: [
                        const Text(
                          'Weight',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                         Text(
                          '${weight.round()}',
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 30.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  weight-- ;
                                });
                              },
                              mini: true,
                              child: const Icon(
                                Icons.minimize,
                              ),
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  weight++ ;
                                });
                              },
                              mini: true,
                              child: const Icon(
                                Icons.add,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),


          Container(
            color: Colors.brown,
            width: double.infinity,
            child: MaterialButton(
              onPressed: () {
                var result = weight / pow(height / 100 , 2 ) ;
                print(result.round()) ;

                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Bmi_Result(age: age, result: result, isMale: isMale)


                  ),
                );
              },
              child: const Text(
                'Calculate',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
