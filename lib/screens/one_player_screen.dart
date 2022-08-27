import 'package:flutter/material.dart';
import 'package:lifely/components/life_counter.dart';

class OnePlayersScreen extends StatefulWidget {
  const OnePlayersScreen({Key? key}) : super(key: key);

  @override
  State<OnePlayersScreen> createState() => _OnePlayersScreenState();
}

class _OnePlayersScreenState extends State<OnePlayersScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Stack(
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
                      Navigator.popAndPushNamed(context, "/main");
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
