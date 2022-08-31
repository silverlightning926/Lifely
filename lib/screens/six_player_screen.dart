import 'package:flutter/material.dart';
import 'package:lifely/components/life_counter.dart';

import '../components/menu_button.dart';

class SixPlayerScreen extends StatefulWidget {
  const SixPlayerScreen({Key? key}) : super(key: key);

  @override
  State<SixPlayerScreen> createState() => _SixPlayerScreenState();
}

class _SixPlayerScreenState extends State<SixPlayerScreen> {
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
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
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
                          lowerBound: -9,
                          upperBound: 99,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        LifeCounter(
                          playerNum: 6,
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.blue.shade900,
                              Colors.blue.shade500,
                            ],
                          ),
                          quarterRotations: 1,
                          startingLife:
                              startingLife != null ? startingLife as int : 20,
                          lowerBound: -9,
                          upperBound: 99,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        LifeCounter(
                          playerNum: 5,
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.yellow.shade900,
                              Colors.yellow.shade500,
                            ],
                          ),
                          quarterRotations: 1,
                          startingLife:
                              startingLife != null ? startingLife as int : 20,
                          lowerBound: -9,
                          upperBound: 99,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
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
                          lowerBound: -9,
                          upperBound: 99,
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
                              Colors.grey.shade900,
                              Colors.grey.shade500,
                            ],
                          ),
                          quarterRotations: 3,
                          startingLife:
                              startingLife != null ? startingLife as int : 20,
                          lowerBound: -9,
                          upperBound: 99,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        LifeCounter(
                          playerNum: 4,
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.purple.shade900,
                              Colors.purple.shade500,
                            ],
                          ),
                          quarterRotations: 3,
                          startingLife:
                              startingLife != null ? startingLife as int : 20,
                          lowerBound: -9,
                          upperBound: 99,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
              const Align(
                alignment: Alignment.topCenter,
                child: FractionallySizedBox(
                  alignment: Alignment.center,
                  heightFactor: 0.666,
                  child: Center(
                    child: MenuButton(
                      resetRoute: '/six',
                      numOfPlayer: 6,
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
