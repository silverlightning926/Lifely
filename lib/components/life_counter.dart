import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LifeCounter extends StatefulWidget {
  const LifeCounter({
    Key? key,
    required this.gradient,
    required this.playerNum,
    required this.quarterRotations,
    required this.startingLife,
  }) : super(key: key);

  final Gradient gradient;
  final int playerNum;
  final int quarterRotations;
  final int startingLife;

  @override
  State<LifeCounter> createState() => _LifeCounterState();
}

class _LifeCounterState extends State<LifeCounter> {
  int currentLife = 20;

  void resetCounter() {
    setState(() {
      currentLife = 0;
    });
  }

  @override
  void initState() {
    super.initState();
    currentLife = widget.startingLife;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RotatedBox(
        quarterTurns: widget.quarterRotations,
        child: Container(
          decoration: BoxDecoration(
            gradient: widget.gradient,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "P${widget.playerNum}",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 25,
                        letterSpacing: 3,
                      ),
                    ),
                    Text(
                      "$currentLife",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 100,
                      ),
                    ),
                    const Icon(
                      CupertinoIcons.heart_solid,
                      size: 50,
                    )
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: MaterialButton(
                        onPressed: () {
                          setState(() {
                            currentLife++;
                          });
                        },
                      ),
                    ),
                  ),
                  Expanded(
                      child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: MaterialButton(
                      onPressed: () {
                        setState(() {
                          currentLife--;
                        });
                      },
                    ),
                  )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
