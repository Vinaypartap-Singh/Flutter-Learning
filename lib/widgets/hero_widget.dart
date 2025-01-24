import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "hero1",
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: SizedBox(
          height: 300,
          width: double.infinity,
          child: Lottie.asset(
            "assets/lotties/heroAnimation.json",
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
