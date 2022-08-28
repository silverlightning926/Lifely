import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lifely/screens/settings_screen.dart';

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
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Stack(
            fit: StackFit.expand,
            children: [
              RotatedBox(
                quarterTurns: 1,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.red.shade900,
                        Colors.red.shade500,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text(
                                "P${1}",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 25,
                                  letterSpacing: 3,
                                ),
                              ),
                              Text(
                                "${currentLife}",
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 100,
                                ),
                              ),
                              const Icon(
                                CupertinoIcons.heart_solid,
                                size: 50,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: MaterialButton(
                                onPressed: () {
                                  setState(
                                    () {currentLife--;},
                                  );
                                },
                              ),
                            ),
                          ),
                          Expanded(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: MaterialButton(
                                onPressed: () {
                                  setState(
                                    () {currentLife++;},
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0, left: 10.0),
                child: Align(
                  alignment: Alignment.bottomLeft,
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
                          transitionDuration: const Duration(milliseconds: 150),
                          reverseTransitionDuration:
                              const Duration(milliseconds: 150),
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  const SettingsScreen(
                            resetRoute: '/one',
                          ),
                          transitionsBuilder:
                              (context, animation, secondaryAnimation, child) {
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
            ],
          ),
        ),
      ),
    );
  }
}
