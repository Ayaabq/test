import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:task/constants.dart';
import 'package:task/features/home/data/dummy_products.dart';
class ProductItem extends StatelessWidget {
  const ProductItem({super.key, required this.productModel});
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return  Container(
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
          Image.asset(productModel.imageUrl,
            width: 44,
            height: 89,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children:[ Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                children:[Text(productModel.name),
                          Text(productModel.portion),
                          Text("${productModel.price}\$"),
                ]

                          ),
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: kPrimaryColor,
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.add),
                      color: Colors.white, // Set icon color to white or any other contrasting color
                    ),
                  )
            ]),
          )
        ],
      ),
    );
  }
}

