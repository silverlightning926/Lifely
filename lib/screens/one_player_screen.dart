import 'package:flutter/material.dart';

import '../components/life_counter.dart';
import '../components/menu_button.dart';

class OnePlayersScreen extends StatefulWidget {
  const OnePlayersScreen({Key? key}) : super(key: key);

  @override
  State<OnePlayersScreen> createState() => _OnePlayersScreenState();
}

class _OnePlayersScreenState extends State<OnePlayersScreen> {
  @override
  Widget build(BuildContext context) {
    final startingLife = ModalRoute.of(context)!.settings.arguments;

    return SafeArea(
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: const MenuButton(
          resetRoute: '/one',
          numOfPlayer: 1,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              LifeCounter(
                startingLife: startingLife != null ? startingLife as int : 20,
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
                lowerBound: -999999999,
                upperBound: 9999999999,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
