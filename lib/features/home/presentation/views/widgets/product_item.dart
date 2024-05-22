import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task/constants.dart';
import 'package:task/core/utils/screen_size_util.dart';
import 'package:task/features/cart/presentation/maneger/cart_provider.dart';
import 'package:task/features/home/data/dummy_products.dart';

import '../../../data/models/product_model.dart';

class ProductItem extends ConsumerWidget {
  const ProductItem({super.key, required this.productModel});
  final ProductModel productModel;
  @override
  Widget build(BuildContext context,WidgetRef ref) {
    addToCart(){
      ref.watch(cartProvider.notifier).addToCart(productModel.id);
    }
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: Colors.black, // Border color
          width: 1, // Border width
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            productModel.imageUrl,
            width: 44,
            height: 89,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(

                mainAxisAlignment: MainAxisAlignment.center,
                children: [
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                SizedBox(
                  width:ScreenSizeUtil.screenWidth/5,
                  child: Text(
                    productModel.name,
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        overflow: TextOverflow.ellipsis),
                  ),
                ),
                Text(productModel.portion),
                Text("${productModel.price}\$",
                    style:const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        overflow: TextOverflow.ellipsis)),
              ]),

              const Spacer(),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: kPrimaryColor,
                  ),
                  child: IconButton(
                    onPressed: addToCart,
                    icon: const Icon(Icons.add),
                    color: Colors
                        .white, // Set icon color to white or any other contrasting color
                  ),
                ),
              )
            ]),
          )
        ],
      ),
    );
  }
}
