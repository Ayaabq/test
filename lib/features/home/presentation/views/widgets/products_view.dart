import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task/features/home/presentation/maneger/product_provider.dart';
import 'package:task/features/home/presentation/views/widgets/product_item.dart';


class ProductView extends ConsumerWidget {
  const ProductView({super.key, required this.categoryId});
  final int categoryId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final products = ref.read(productsProvider.notifier).categoryProducts(categoryId);
    return Scaffold(
      appBar: AppBar(
        title:  const Text("categoryTitle"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: GridView.builder(
            itemCount: products.length,
            gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 173.5/ 248.11,
              crossAxisSpacing: 15,
              mainAxisSpacing: 10,
            ),
            itemBuilder: (context,index){
              return ProductItem(productModel:products[index],);
            }),
      ),
    );
  }
}
