import 'dart:math';
import 'dart:ui';

import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:status_alert/status_alert.dart';

class DiceScreen extends StatelessWidget {
  const DiceScreen({Key? key}) : super(key: key);

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
            toolbarHeight: 50,
            automaticallyImplyLeading: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle: true,
          ),
          body: GridView.count(
            physics: const ScrollPhysics(),
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 5.0,
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            crossAxisCount: 2,
            children: [
              MaterialButton(
                onPressed: () {
                  StatusAlert.show(
                    context,
                    dismissOnBackgroundTap: true,
                    duration: const Duration(seconds: 4),
                    subtitle: Random().nextInt(2) == 0
                        ? 'Result: Heads'
                        : 'Result: Tails',
                    title: 'Coin Flip',
                    configuration: const IconConfiguration(
                      icon: FontAwesomeIcons.circle,
                    ),
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      FontAwesomeIcons.circle,
                      size: 75,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Coin',
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
                  StatusAlert.show(
                    context,
                    dismissOnBackgroundTap: true,
                    duration: const Duration(seconds: 4),
                    subtitle: 'Result: ${Random().nextInt(4) + 1}',
                    title: 'D4 Roll',
                    configuration: const IconConfiguration(
                      icon: FontAwesomeIcons.dice,
                    ),
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      CommunityMaterialIcons.dice_d4,
                      size: 75,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'D4',
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
                  StatusAlert.show(
                    context,
                    dismissOnBackgroundTap: true,
                    duration: const Duration(seconds: 4),
                    subtitle: 'Result: ${Random().nextInt(6) + 1}',
                    title: 'D6 Roll',
                    configuration: const IconConfiguration(
                      icon: FontAwesomeIcons.dice,
                    ),
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      CommunityMaterialIcons.dice_d6,
                      size: 75,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'D6',
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
                  StatusAlert.show(
                    context,
                    dismissOnBackgroundTap: true,
                    duration: const Duration(seconds: 4),
                    subtitle: 'Result: ${Random().nextInt(8) + 1}',
                    title: 'D4 Roll',
                    configuration: const IconConfiguration(
                      icon: FontAwesomeIcons.dice,
                    ),
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      CommunityMaterialIcons.dice_d8,
                      size: 75,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'D8',
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
                  StatusAlert.show(
                    context,
                    dismissOnBackgroundTap: true,
                    duration: const Duration(seconds: 4),
                    subtitle: 'Result: ${Random().nextInt(10) + 1}',
                    titleOptions: StatusAlertTextConfiguration(),
                    title: 'D10 Roll',
                    configuration: const IconConfiguration(
                      icon: FontAwesomeIcons.dice,
                    ),
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      CommunityMaterialIcons.dice_d10,
                      size: 75,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'D10',
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
                  StatusAlert.show(
                    context,
                    dismissOnBackgroundTap: true,
                    duration: const Duration(seconds: 4),
                    subtitle: 'Result: ${Random().nextInt(12) + 1}',
                    title: 'D12 Roll',
                    configuration: const IconConfiguration(
                      icon: FontAwesomeIcons.dice,
                    ),
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      CommunityMaterialIcons.dice_d12,
                      size: 75,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'D12',
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
                  StatusAlert.show(
                    context,
                    dismissOnBackgroundTap: true,
                    duration: const Duration(seconds: 4),
                    subtitle: 'Result: ${Random().nextInt(20) + 1}',
                    title: 'D20 Roll',
                    configuration: const IconConfiguration(
                      icon: FontAwesomeIcons.dice,
                    ),
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      CommunityMaterialIcons.dice_d20,
                      size: 75,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'D20',
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
