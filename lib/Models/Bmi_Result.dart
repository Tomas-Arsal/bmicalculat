import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bmi_Result extends StatelessWidget {

  final double result;

  final int age;

  final bool isMale;

  Bmi_Result({
    required this.age,
    required this.result,
    required this.isMale ,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Bmi_Result',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Text(
              'Gender : ${isMale ? 'male' : 'female'}',
              style: const TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.w900,
              ),
            ),
            Text(
              'Result : ${result}',
              style: const TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.w900,
              ),
            ),
            Text(
              'Age : ${age}',
              style: const TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.w900,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
