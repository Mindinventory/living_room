import 'package:flutter/material.dart';
import 'package:living_room_light_demo/utils/colors.dart';

class GradientBackGround extends StatelessWidget {
  final Widget child;
  const GradientBackGround({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: GradientColors.backgroundGradient,
        ),
      ),
      child: child,
    );
  }
}