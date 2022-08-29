import 'package:flutter/material.dart';

import '../screens/settings_screen.dart';

class MenuButton extends StatelessWidget {
  const MenuButton({
    Key? key,
    required this.resetRoute,
  }) : super(key: key);

  final String resetRoute;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
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
                SettingsScreen(
              resetRoute: resetRoute,
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
    );
  }
}
