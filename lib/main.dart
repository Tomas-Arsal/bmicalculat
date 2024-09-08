import 'package:bmicalculat/Models/Bmi_Calculator.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Bmi_Calculator() ,
    );
  }
}
