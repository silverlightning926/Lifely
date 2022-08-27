import 'package:flutter/material.dart';
import 'package:lifely/screens/two_player_screen.dart';

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
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
      ),
      routes: {'/main': (context) => const TwoPlayersScreen()},
      home: const TwoPlayersScreen(),
    );
  }
}
