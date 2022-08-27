import 'dart:ui';

import 'package:flutter/material.dart';

class PlayerAmountScreen extends StatelessWidget {
  const PlayerAmountScreen({Key? key}) : super(key: key);

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
            toolbarHeight: 100,
            automaticallyImplyLeading: true,
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
                      .pushNamedAndRemoveUntil('/one', (route) => false);
                },
                child: const Text(
                  "1",
                  style: TextStyle(
                    fontSize: 100,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushNamedAndRemoveUntil('/two', (route) => false);
                },
                child: const Text(
                  "2",
                  style: TextStyle(
                    fontSize: 100,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushNamedAndRemoveUntil('/three', (route) => false);
                },
                child: const Text(
                  "3",
                  style: TextStyle(
                    fontSize: 100,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushNamedAndRemoveUntil('/four', (route) => false);
                },
                child: const Text(
                  "4",
                  style: TextStyle(
                    fontSize: 100,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushNamedAndRemoveUntil('/five', (route) => false);
                },
                child: const Text(
                  "5",
                  style: TextStyle(
                    fontSize: 100,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushNamedAndRemoveUntil('/six', (route) => false);
                },
                child: const Text(
                  "6",
                  style: TextStyle(
                    fontSize: 100,
                    fontWeight: FontWeight.w500,
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
