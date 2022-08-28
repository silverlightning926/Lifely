import 'package:flutter/material.dart';
import 'package:lifely/components/life_counter.dart';
import 'package:lifely/screens/settings_screen.dart';

class ThreePlayerScreen extends StatefulWidget {
  const ThreePlayerScreen({Key? key}) : super(key: key);

  @override
  State<ThreePlayerScreen> createState() => _ThreePlayerScreenState();
}

class _ThreePlayerScreenState extends State<ThreePlayerScreen> {
  @override
  Widget build(BuildContext context) {
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
                          startingLife: 20,
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
                          startingLife: 20,
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
                    startingLife: 20,
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
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
                              resetRoute: '/three',
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
