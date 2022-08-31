import 'package:circular_menu/circular_menu.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LifeCounter extends StatefulWidget {
  const LifeCounter({
    Key? key,
    required this.gradient,
    required this.playerNum,
    required this.quarterRotations,
    required this.startingLife,
    required this.lowerBound,
    required this.upperBound,
  }) : super(key: key);

  final Gradient gradient;
  final int playerNum;
  final int quarterRotations;
  final int startingLife;
  final int lowerBound;
  final int upperBound;

  @override
  State<LifeCounter> createState() => _LifeCounterState();
}

class _LifeCounterState extends State<LifeCounter> {
  Modes currentMode = Modes.life;

  int currentLife = 20;
  int currentPoison = 0;
  int currentEnergy = 0;

  bool monarch = false;
  bool ascend = false;

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
                padding: const EdgeInsets.all(6.0),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            CommunityMaterialIcons.crown,
                            size: 50,
                            color: monarch ? Colors.yellow : Colors.transparent,
                          ),
                          Text(
                            "P${widget.playerNum}",
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 25,
                              letterSpacing: 3,
                            ),
                          ),
                          Icon(
                            const IconData(0xe94a, fontFamily: 'Mana'),
                            color: ascend ? Colors.black : Colors.transparent,
                            size: 50,
                          ),
                        ],
                      ),
                      Text(
                        currentMode == Modes.poison
                            ? '$currentPoison'
                            : currentMode == Modes.energy
                                ? '$currentEnergy'
                                : '$currentLife',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 100,
                        ),
                      ),
                      Icon(
                        currentMode == Modes.poison
                            ? const IconData(0xe618, fontFamily: 'Mana')
                            : currentMode == Modes.energy
                                ? const IconData(0xe907, fontFamily: 'Mana')
                                : CupertinoIcons.heart_solid,
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
                            () {
                              if ((currentMode == Modes.poison &&
                                      currentPoison > widget.lowerBound) ||
                                  (currentMode == Modes.energy &&
                                      currentEnergy > widget.lowerBound) ||
                                  (currentMode == Modes.life &&
                                      currentLife > widget.lowerBound)) {
                                currentMode == Modes.poison
                                    ? currentPoison--
                                    : currentMode == Modes.energy
                                        ? currentEnergy--
                                        : currentLife--;
                              }
                            },
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
                            () {
                              if ((currentMode == Modes.poison &&
                                      currentPoison < widget.upperBound) ||
                                  (currentMode == Modes.energy &&
                                      currentEnergy < widget.upperBound) ||
                                  (currentMode == Modes.life &&
                                      currentLife < widget.upperBound)) {
                                currentMode == Modes.poison
                                    ? currentPoison++
                                    : currentMode == Modes.energy
                                        ? currentEnergy++
                                        : currentLife++;
                              }
                            },
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
              CircularMenu(
                toggleButtonColor: Colors.white,
                toggleButtonBoxShadow: const [],
                toggleButtonIconColor: Colors.black,
                toggleButtonSize: 15,
                radius: 115,
                alignment: Alignment.bottomRight,
                items: [
                  CircularMenuItem(
                      icon: CupertinoIcons.heart_solid,
                      color: Colors.pinkAccent,
                      onTap: () {
                        setState(() {
                          currentMode = Modes.life;
                        });
                      }),
                  CircularMenuItem(
                      icon: const IconData(0xe618, fontFamily: 'Mana'),
                      color: Colors.green,
                      onTap: () {
                        setState(() {
                          currentMode = Modes.poison;
                        });
                      }),
                  CircularMenuItem(
                      icon: const IconData(0xe907, fontFamily: 'Mana'),
                      color: Colors.blue,
                      onTap: () {
                        setState(() {
                          currentMode = Modes.energy;
                        });
                      }),
                  CircularMenuItem(
                      icon: const IconData(0xe94a, fontFamily: 'Mana'),
                      color: Colors.orange,
                      onTap: () {
                        setState(() {
                          ascend = !ascend;
                        });
                      }),
                  CircularMenuItem(
                      icon: CommunityMaterialIcons.crown,
                      color: Colors.purple,
                      onTap: () {
                        setState(() {
                          monarch = !monarch;
                        });
                      }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum Modes {
  life,
  poison,
  energy,
}
