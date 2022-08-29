import 'package:flutter/material.dart';

import '../components/life_counter.dart';
import '../components/menu_button.dart';

class OnePlayersScreen extends StatefulWidget {
  const OnePlayersScreen({Key? key}) : super(key: key);

  @override
  State<OnePlayersScreen> createState() => _OnePlayersScreenState();
}

class _OnePlayersScreenState extends State<OnePlayersScreen> {
  int currentLife = 20;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
        floatingActionButton: const MenuButton(
          resetRoute: '/one',
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: LifeCounter(
            startingLife: 20,
            playerNum: 1,
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.red.shade900,
                Colors.red.shade500,
              ],
            ),
            quarterRotations: 1,
          ),
        ),
      ),
    );
  }
}
