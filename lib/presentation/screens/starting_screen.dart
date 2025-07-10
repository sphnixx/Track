import 'package:flutter/material.dart';
import 'package:track/core/Colors/colors.dart';
import 'package:track/core/Colors/gradient.dart';

class StartingScreen extends StatelessWidget {
  const StartingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: luxorGradient
          ),
        ),
      ),
    );
  }
}
/// Fix error