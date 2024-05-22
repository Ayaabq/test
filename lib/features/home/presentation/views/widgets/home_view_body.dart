import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:task/features/home/data/models/category_model.dart';

import '../../../../../core/utils/app_router.dart';
import '../../../data/dummy_categories.dart';
import 'categiry_grid_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});
  void _selectCategory(BuildContext context, CategoryModel category) {
    // final filteredMeals = widget.availableMeals
    //     .where((meal) => meal.categories.contains(category.id))
    //     .toList();
    // final meals =
  }
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: GridView.builder(
        itemCount: 8,
          gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 174.5/ 189.11,
            crossAxisSpacing: 15,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context,index){
            return CategoryGridItem(category: dummyCategoriesData[index], onSelectedCategory: (index){
              GoRouter.of(context ).push('/ProductView/${dummyCategoriesData[index].id}');
            });
          }),
    );
  }
}
