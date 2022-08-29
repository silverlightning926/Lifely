import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lifely/screens/settings_screen.dart';

import '../components/life_counter.dart';

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
        floatingActionButton: MaterialButton(
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
                reverseTransitionDuration: const Duration(milliseconds: 150),
                pageBuilder: (context, animation, secondaryAnimation) =>
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
