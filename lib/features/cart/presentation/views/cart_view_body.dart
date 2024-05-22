import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task/features/cart/presentation/maneger/cart_provider.dart';
import 'package:task/features/home/presentation/maneger/product_provider.dart';

import 'cart_item.dart';

class CartViewBody extends ConsumerWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartItems= ref.read(cartProvider);
    return ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          final productItem = ref.read(productsProvider.notifier).findProduct(cartItems[index].productId);

          return Column(
            children: [
              CartItem(productModel: productItem, cartItem: cartItems[index],),
              const Divider(

              )
            ],
          );
        });
  }
}
