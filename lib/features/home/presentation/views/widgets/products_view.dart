import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task/core/widgets/custom_add_button.dart';
import 'package:task/features/home/data/dummy_categories.dart';
import 'package:task/features/home/presentation/maneger/product_provider.dart';
import 'package:task/features/home/presentation/views/widgets/add_product_view.dart';
import 'package:task/features/home/presentation/views/widgets/empty_category.dart';
import 'package:task/features/home/presentation/views/widgets/product_item.dart';

class ProductView extends ConsumerWidget {
  const ProductView({super.key, required this.categoryId});
  final int categoryId;
  addProduct() {}
  void showAddBottomSheet(BuildContext context) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return  AddProductView(categoryId);
      },
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final products =
        ref.watch(productsProvider.notifier).categoryProducts(categoryId, ref);
    Widget content = Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: GridView.builder(
          itemCount: products.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 173.5 / 248.11,
            crossAxisSpacing: 15,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            return ProductItem(
              productModel: products[index],
            );
          }),
    );
    if (products.isEmpty) {
      content = const EmptyCategory();
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(dummyCategoriesData[categoryId - 2].title),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: AddButton(
              onTap: () {
                showAddBottomSheet(context);
              },
            ),
          )
        ],
      ),
      body: content,
    );
  }
}
