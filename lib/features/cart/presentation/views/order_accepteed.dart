import 'package:flutter/material.dart';

class OrderAccepted extends StatelessWidget {
  const OrderAccepted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset("assets/images/cat6.png"),
          const Text("Your Order has been accepted",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18
          ),),
          const Text("Your items has been placcd and is on it’s way to being processed"),

        ],
      ),
    );
  }
}

