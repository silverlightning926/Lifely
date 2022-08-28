import 'package:flutter/material.dart';
import 'package:lifely/components/life_counter.dart';
import 'package:lifely/screens/settings_screen.dart';

class SixPlayerScreen extends StatefulWidget {
  const SixPlayerScreen({Key? key}) : super(key: key);

  @override
  State<SixPlayerScreen> createState() => _SixPlayerScreenState();
}

class _SixPlayerScreenState extends State<SixPlayerScreen> {
  @override
  Widget build(BuildContext context) {
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
                          startingLife: 20,
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
                          startingLife: 20,
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
                          startingLife: 20,
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
                          startingLife: 20,
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
                          startingLife: 20,
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
                          startingLife: 20,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
              Align(
                alignment: Alignment.topCenter,
                child: FractionallySizedBox(
                  alignment: Alignment.center,
                  heightFactor: 0.666,
                  child: Center(
                    child: MaterialButton(
                      height: 75,
                      elevation: 0,
                      focusElevation: 0,
                      hoverElevation: 0,
                      highlightElevation: 0,
                      disabledElevation: 0,
                      shape: const CircleBorder(
                        side: BorderSide(
                          color: Colors.black,
                          width: 8,
                        ),
                      ),
                      color: Colors.white,
                      child: const Icon(
                        Icons.menu,
                        color: Colors.black,
                        size: 35,
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                          PageRouteBuilder(
                            opaque: false,
                            barrierDismissible: false,
                            transitionDuration:
                                const Duration(milliseconds: 150),
                            reverseTransitionDuration:
                                const Duration(milliseconds: 150),
                            pageBuilder:
                                (context, animation, secondaryAnimation) =>
                                    const SettingsScreen(
                              resetRoute: '/six',
                            ),
                            transitionsBuilder: (context, animation,
                                secondaryAnimation, child) {
                              const begin = Offset(0.0, 1.0);
                              const end = Offset.zero;
                              const curve = Curves.ease;

                              final tween = Tween(begin: begin, end: end);
                              final curvedAnimation = CurvedAnimation(
                                parent: animation,
                                curve: curve,
                              );

                              return SlideTransition(
                                position: tween.animate(curvedAnimation),
                                child: child,
                              );
                            },
                          ),
                        );
                      },
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
