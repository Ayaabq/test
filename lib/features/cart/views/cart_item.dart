import 'package:flutter/material.dart';
import 'package:task/features/cart/data/models/cart_model.dart';

class CartItem extends StatefulWidget {
  const CartItem({super.key, required this.cartItem});
  final CartModel cartItem;
  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  void _increaseQuantity() {
    setState(() {
      widget.cartItem.quantity++;
    });
  }

  void _decreaseQuantity() {
    setState(() {
      if (widget.cartItem.quantity > 1) {
        widget.cartItem.quantity--;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
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
              child: Image.asset(widget.cartItem.imageUrl,
              width: 70,
              height: 64,),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Text(widget.cartItem.title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16
                ),),
                const Text("1kg, Price"),
                 Row(
                   children: [
                     IconButton(onPressed: _increaseQuantity, icon: const Icon(Icons.add)),
                      Text(widget.cartItem.quantity.toString()),
                     IconButton(onPressed: _decreaseQuantity, icon: const Icon(Icons.minimize))
                   ],
                 )
              ],
            ),
            const Spacer(),
            Column(children: [
              IconButton(onPressed: (){}, icon: const Icon(Icons.close)),
              const Spacer(),
               Text("${widget.cartItem.quantity *widget.cartItem.price}\$",
              style: const TextStyle(
                fontWeight: FontWeight.bold
              ),)
            ],)

          ],
        ),
      ),
    );
  }
}
