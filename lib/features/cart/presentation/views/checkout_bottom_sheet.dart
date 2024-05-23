import 'package:flutter/material.dart';
import 'package:task/core/widgets/custom_button.dart';

class CheckoutBottomSheet extends StatelessWidget {
  const CheckoutBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            "Are you sure?",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 300),
          CustomButton(
            onTap: () {
              // Handle the order action
              Navigator.pop(context); // Close the bottom sheet
            },
            title: "Order please",
          ),
        ],
      ),
    );
  }
}
