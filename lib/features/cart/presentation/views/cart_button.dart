import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task/core/widgets/custom_button.dart';
import 'package:task/core/widgets/price_text.dart';
import 'package:task/features/cart/presentation/maneger/cart_provider.dart';

class CartButton extends ConsumerWidget {
  const CartButton( {super.key, required this.onCheckout, required this.onBackToAdd});
  final void Function() onCheckout;
  final void Function() onBackToAdd;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final totalPrice= ref.watch(cartProvider.notifier).totalPrice(ref);
    final bool isEmpty= totalPrice==0;
    final onTap= isEmpty? onBackToAdd :onCheckout;
    final title= isEmpty?"Back to add" :"Checkout";
    return Stack(
      children: [
        CustomButton(onTap: onTap,
            title: title),
        Positioned(
          top: 8, // Adjust this value as needed to position the container
          right: 8, // Adjust this value as needed to position the container
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.5),
              borderRadius: BorderRadius.circular(3),
            ),
            child: PriceText(
              price: totalPrice,
            ),
          ),
        ),
      ],
    );
  }
}
