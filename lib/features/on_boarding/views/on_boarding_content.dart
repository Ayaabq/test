import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:task/core/utils/assets.dart';
import 'package:task/core/utils/screen_size_util.dart';
import 'package:task/core/widgets/custom_button.dart';

import '../../../core/utils/app_router.dart';

class OnBoardingContent extends StatelessWidget {
  const OnBoardingContent({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSizeUtil.init(context);
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,

        children: [
          Image.asset(AssetsData.logo,
              width: 48.47,
              height: 56.36,


          ),
          const SizedBox(
            width: double.infinity,
            height: 35.66,
          ),
          const Text("Welcome to our store",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
            fontSize: 48
          ),),
          const SizedBox(
            height: 19,
          ),
          const Text("Ger your groceries in as fast as one hour",
          style: TextStyle(
            color: Color(0xfffcfcfcb2),
            fontSize: 16,
          ),),
          const SizedBox(
            height: 40,
          ),
           CustomButton(onTap: (){
            GoRouter.of(context ).push(AppRouter.kTabView);
          },   title: "Get Started"),
          SizedBox(height: ScreenSizeUtil.screenHeight *.1,)
        ],
      ),
    );

  }
}
