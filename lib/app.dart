import 'package:flutter/material.dart';
import 'presentation/screens/starting_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Track',
      home: const StartingScreen(),
    );
  }
}
