import 'package:flutter/material.dart';
class PriceText extends StatelessWidget {
  const PriceText({super.key, required this.price});
  final double price;
  @override
  Widget build(BuildContext context) {
    return  Text(
      "\$${(price.toStringAsFixed(2))}",
      style: const TextStyle(
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
