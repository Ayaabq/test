import 'package:flutter/material.dart';

import '../../constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onTap, required this.title});
  final  void Function() onTap;
  final String title;
  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
      style:  ElevatedButton.styleFrom(
        backgroundColor: kPrimaryColor,
        foregroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
      ),
      onPressed:onTap,
      child:  SizedBox(
        height: 48,
        width: double.infinity,
        child: Center(
          child: Text(title,
              textAlign: TextAlign.center,
              style:  const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w400
              )),
        ),
      ),
    );
  }
}
