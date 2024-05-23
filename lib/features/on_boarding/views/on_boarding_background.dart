import 'package:flutter/material.dart';

import '../../../generated/assets.dart';

class OnBoardingBackground extends StatelessWidget {
  const OnBoardingBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
         Assets.imagesGetStarted,
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(66, 1, 1, 1),
                Color.fromARGB(0, 1, 1, 1)
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
        ),
      ],
    );
  }
}
