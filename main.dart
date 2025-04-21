import 'package:flutter/material.dart';
import 'package:yadgiri/gradient_containar.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainar(
          Color.fromARGB(255, 103, 19, 19),
          Color.fromARGB(255, 64, 28, 28),
        ),
      ),
    ),
  );
}
