import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:task/constants.dart';

import '../../../core/utils/app_router.dart';

class OnBoardingButton extends StatelessWidget {
  const OnBoardingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
        onPressed: (){
          GoRouter.of(context ).push(AppRouter.kTabView);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: kPrimaryColor,
          foregroundColor: Colors.white,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
        ),
        child: const SizedBox(
          height: 48,
          width: double.infinity,
          child: Center(
            child: Text(
              "Get Started",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w400
              ),
            ),
          ),
        ),
    );
  }
}
