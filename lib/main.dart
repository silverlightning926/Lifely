import 'package:flutter/material.dart';
import 'package:lifely/screens/main_screen.dart';

void main() {
  runApp(const Lifely());
}

class Lifely extends StatelessWidget {
  const Lifely({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lifely',
      theme: ThemeData.dark().copyWith(),
      home: const MainScreen(),
    );
  }
}
