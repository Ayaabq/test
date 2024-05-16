import 'package:flutter/material.dart';
import 'package:task/features/on_boarding/views/on_boarding_background.dart';
import 'package:task/features/on_boarding/views/on_boarding_content.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          OnBoardingBackground(),
          OnBoardingContent()
        ],
      ),
    );
  }
}
