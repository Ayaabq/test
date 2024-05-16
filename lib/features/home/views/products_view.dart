import 'package:flutter/material.dart';
import 'package:task/features/home/data/dummy_products.dart';
import 'package:task/features/home/views/product_item.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key, required this.categoryTitle});
  final String categoryTitle;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(categoryTitle),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: GridView.builder(
            itemCount: dummyProducts.length,
            gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 173.5/ 248.11,
              crossAxisSpacing: 15,
              mainAxisSpacing: 10,
            ),
            itemBuilder: (context,index){
              return ProductItem(productModel: dummyProducts[index],);
            }),
      ),
    );
  }
}
