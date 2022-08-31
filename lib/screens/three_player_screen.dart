import 'package:flutter/material.dart';
import 'package:lifely/components/life_counter.dart';

import '../components/menu_button.dart';

class ThreePlayerScreen extends StatefulWidget {
  const ThreePlayerScreen({Key? key}) : super(key: key);

  @override
  State<ThreePlayerScreen> createState() => _ThreePlayerScreenState();
}

class _ThreePlayerScreenState extends State<ThreePlayerScreen> {
  @override
  Widget build(BuildContext context) {
    final startingLife = ModalRoute.of(context)!.settings.arguments;

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                          quarterRotations: 1,
                          startingLife:
                              startingLife != null ? startingLife as int : 20,
                          lowerBound: -99999,
                          upperBound: 999999,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        LifeCounter(
                          playerNum: 2,
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.green.shade900,
                              Colors.green.shade500,
                            ],
                          ),
                          quarterRotations: 3,
                          startingLife:
                              startingLife != null ? startingLife as int : 20,
                          lowerBound: -99999,
                          upperBound: 999999,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  LifeCounter(
                    playerNum: 3,
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
                    lowerBound: -999,
                    upperBound: 9999,
                  ),
                ],
              ),
              const Align(
                alignment: Alignment.bottomCenter,
                child: FractionallySizedBox(
                  alignment: Alignment.center,
                  heightFactor: 0.666,
                  child: Center(
                    child: MenuButton(
                      resetRoute: '/three',
                      numOfPlayer: 3,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
