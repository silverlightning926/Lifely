import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lifely/screens/dice_screen.dart';
import 'package:lifely/screens/player_amount_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key, this.resetRoute}) : super(key: key);

  final String? resetRoute;

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0),
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xDF000000),
              Color(0xBD000000),
            ],
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            actions: [
              Padding(
                padding: const EdgeInsets.only(top: 0.0, right: 15.0),
                child: IconButton(
                  iconSize: 35,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.close,
                  ),
                ),
              ),
            ],
            toolbarHeight: 100,
            automaticallyImplyLeading: false,
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle: true,
          ),
          body: GridView.count(
            mainAxisSpacing: 5.0,
            crossAxisSpacing: 5.0,
            padding: const EdgeInsets.all(10.0),
            crossAxisCount: 2,
            children: [
              MaterialButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushNamedAndRemoveUntil(resetRoute!, (route) => false);
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      FontAwesomeIcons.retweet,
                      size: 75,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Reset',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.of(context).push(
                    PageRouteBuilder(
                      opaque: false,
                      barrierDismissible: false,
                      transitionDuration: const Duration(milliseconds: 150),
                      reverseTransitionDuration:
                          const Duration(milliseconds: 150),
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          const PlayerAmountScreen(),
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      FontAwesomeIcons.userGroup,
                      size: 75,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Players',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.of(context).push(
                    PageRouteBuilder(
                      opaque: false,
                      barrierDismissible: false,
                      transitionDuration: const Duration(milliseconds: 150),
                      reverseTransitionDuration:
                          const Duration(milliseconds: 150),
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          const DiceScreen(),
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      FontAwesomeIcons.dice,
                      size: 75,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Dice',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
