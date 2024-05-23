import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task/core/utils/screen_size_util.dart';
import 'package:task/core/widgets/custom_add_button.dart';
import 'package:task/features/cart/presentation/maneger/cart_provider.dart';

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
          productModel.getImageWithFixedSize(50,   50),
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
                SizedBox(
                  width: ScreenSizeUtil.screenWidth/3.5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("${productModel.price}\$",
                          style:const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              overflow: TextOverflow.ellipsis)),
                      AddButton(onTap: addToCart,),
                    ],
                  ),
                ),
              ]),


            ]),
          )
        ],
      ),
    );
  }
}
