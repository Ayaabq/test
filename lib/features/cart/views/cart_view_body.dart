import 'package:flutter/material.dart';
import 'package:task/features/cart/views/cart_item.dart';

import '../data/dummy_cart_item.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: dummyCartItems.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              CartItem(cartItem: dummyCartItems[index],),
              const Divider(

              )
            ],
          );
        });
  }
}
