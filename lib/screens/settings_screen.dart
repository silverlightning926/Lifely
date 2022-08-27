import 'dart:ui';

import 'package:flutter/material.dart';

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
                      Icons.autorenew,
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
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.people,
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
            ],
          ),
        ),
      ),
    );
  }
}
