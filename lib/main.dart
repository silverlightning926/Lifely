import 'package:flutter/material.dart';
import 'package:lifely/screens/five_player_screen.dart';
import 'package:lifely/screens/four_player_screen.dart';
import 'package:lifely/screens/one_player_screen.dart';
import 'package:lifely/screens/settings_screen.dart';
import 'package:lifely/screens/six_player_screen.dart';
import 'package:lifely/screens/three_player_screen.dart';
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
      routes: {
        '/one': (context) => const OnePlayersScreen(),
        '/two': (context) => const TwoPlayersScreen(),
        '/three': (context) => const ThreePlayerScreen(),
        '/four': (context) => const FourPlayerScreen(),
        '/five': (context) => const FivePlayerScreen(),
        '/six': (context) => const SixPlayerScreen(),
        'settings': (context) => const SettingsScreen(),
      },
      home: const TwoPlayersScreen(),
    );
  }
}
