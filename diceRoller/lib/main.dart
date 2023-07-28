import 'package:flutter/material.dart';
import 'package:outhere/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          colors: [
            Colors.red,
            Colors.blue,
          ],
        ),
      ),
    ),
  );
}
