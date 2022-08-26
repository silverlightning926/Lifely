import 'package:flutter/material.dart';
import 'package:lifely/components/life_counter.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Stack(
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
                    startingLife: 20,
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
                    startingLife: 20,
                  ),
                ],
              ),
              Center(
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
                    Icons.autorenew,
                    color: Colors.black,
                    size: 35,
                  ),
                  onPressed: () {
                    Navigator.popAndPushNamed(context, "/main");
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
