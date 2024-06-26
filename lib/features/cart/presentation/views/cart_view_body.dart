import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task/features/cart/data/models/cart_item_model.dart';
import 'package:task/features/cart/presentation/maneger/cart_provider.dart';
import 'package:task/features/cart/presentation/views/widgets/empty_cart.dart';
import 'package:task/features/home/presentation/maneger/product_provider.dart';

import 'widgets/cart_item.dart';

class CartViewBody extends ConsumerWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<CartItemModel> cartItems= ref.watch(cartProvider);

    void increaseQuantity(int index) {
      ref.watch(cartProvider.notifier).addToCart(cartItems[index].productId);

    }

    void decreaseQuantity(int index) {

      ref.watch(cartProvider.notifier).decreaseQuantity(cartItems[index].productId);
    }

    void deleteProduct(int index) {

      ref.watch(cartProvider.notifier).deleteFromCart(cartItems[index].productId);
    }
    Widget content=ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          final productItem = ref.read(productsProvider.notifier).findProduct(cartItems[index].productId);

          return Column(
            children: [
              CartItem(productModel: productItem,
                cartItem: cartItems[index],
                decreaseQuantity: () { decreaseQuantity(index); },
                deleteProduct: () { deleteProduct(index); },
                increaseQuantity: () { increaseQuantity(index); },),
              const Divider(

              )
            ],
          );
        });
    if(cartItems.isEmpty) {
      content=const EmptyCart();
    }

    return content;
  }
}
