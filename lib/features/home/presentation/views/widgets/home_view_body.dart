import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../data/dummy_categories.dart';
import 'categiry_grid_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});
  void _selectCategory(BuildContext context, int index) {
    GoRouter.of(context).push('/ProductView/${dummyCategoriesData[index].id}');
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: GridView.builder(
        itemCount: 8,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 174.5 / 189.11,
          crossAxisSpacing: 15,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return CategoryGridItem(
            category: dummyCategoriesData[index],
            onSelectedCategory: (index) {
              _selectCategory(context, index);
            },
          );
        },
      ),
    );
  }
}
