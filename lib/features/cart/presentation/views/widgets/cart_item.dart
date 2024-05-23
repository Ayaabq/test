import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task/core/widgets/price_text.dart';
import 'package:task/features/cart/data/models/cart_item_model.dart';
import 'package:task/features/cart/presentation/maneger/cart_provider.dart';
import 'package:task/features/home/data/models/product_model.dart';

class CartItem extends ConsumerWidget {
  const CartItem({super.key, required this.cartItem, required this.productModel,
  required this.decreaseQuantity, required this.deleteProduct, required this.increaseQuantity});
  final CartItemModel cartItem;
  final ProductModel productModel;
  final void Function() increaseQuantity;
  final void Function() decreaseQuantity;
  final void Function() deleteProduct;

  @override
  Widget build(BuildContext context, WidgetRef ref) {


    return  SizedBox(
      height: 157,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0,
        vertical: 25),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 35),
              child: Image.asset(productModel.imageUrl,
              width: 70,
              height: 64,),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Text(productModel.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16
                ),),
                 Text("${productModel.portion}, Price"),
                 Row(
                   children: [
                     IconButton(onPressed: increaseQuantity, icon: const Icon(Icons.add)),
                      Text(cartItem.quantity.toString()),
                     IconButton(onPressed: decreaseQuantity, icon: const Icon(Icons.minimize))
                   ],
                 )
              ],
            ),
            const Spacer(),
            Column(children: [
              IconButton(onPressed: deleteProduct, icon: const Icon(Icons.close)),
              const Spacer(),
             PriceText(price: cartItem.quantity * productModel.price),

            ],)

          ],
        ),
      ),
    );
  }
}
