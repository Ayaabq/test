import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:task/core/widgets/custom_button.dart';

import '../../../../../../core/utils/app_router.dart';
import '../../../../../../generated/assets.dart';

class OrderAccepted extends StatelessWidget {
  const OrderAccepted({super.key});

  @override
  Widget build(BuildContext context) {
    return
       Scaffold(
         floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
         floatingActionButton: Padding(
           padding: const EdgeInsets.all(15.0),
           child: CustomButton(
             onTap: () {
               GoRouter.of(context ).pushReplacement(AppRouter.kTabView);

             }, title: 'Back to home',),
         ),
         body: Padding(
           padding: const EdgeInsets.symmetric(horizontal: 60.0),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AspectRatio(aspectRatio: 1,
              child: Image.asset(Assets.imagesAccepted)),
              const Text("Your Order has been accepted",
              style: TextStyle(
                fontSize: 28
              ),
              textAlign: TextAlign.center,),
              const Text("Your items has been placcd and is on it’s way to being processed",
                  textAlign: TextAlign.center),

            ],
                 ),
         ),
       )
    ;
  }
}

