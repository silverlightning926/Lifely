import 'package:flutter/material.dart';
import 'package:lifely/components/life_counter.dart';

import '../components/menu_button.dart';

class TwoPlayersScreen extends StatefulWidget {
  const TwoPlayersScreen({Key? key}) : super(key: key);

  @override
  State<TwoPlayersScreen> createState() => _TwoPlayersScreenState();
}

class _TwoPlayersScreenState extends State<TwoPlayersScreen> {
  @override
  Widget build(BuildContext context) {
    final startingLife = ModalRoute.of(context)!.settings.arguments;
    const lowerBound = -999;
    const upperBound = 9999;

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Column(
                children: [
                  LifeCounter(
                    playerNum: 1,
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.red.shade900,
                        Colors.red.shade500,
                      ],
                    ),
                    quarterRotations: 2,
                    startingLife:
                        startingLife != null ? startingLife as int : 20,
                    lowerBound: lowerBound,
                    upperBound: upperBound,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  LifeCounter(
                    playerNum: 2,
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.blue.shade900,
                        Colors.blue.shade500,
                      ],
                    ),
                    quarterRotations: 0,
                    startingLife:
                        startingLife != null ? startingLife as int : 20,
                    lowerBound: lowerBound,
                    upperBound: upperBound,
                  ),
                ],
              ),
              const Center(
                child: MenuButton(
                  resetRoute: '/two',
                  numOfPlayer: 2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
