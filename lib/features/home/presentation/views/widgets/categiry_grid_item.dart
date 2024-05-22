import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../data/models/category_model.dart';

class CategoryGridItem extends StatelessWidget {
  const CategoryGridItem({
    required this.category,
    super.key,
    required this.onSelectedCategory,
  });

  final CategoryModel category;
  final Function(int id) onSelectedCategory;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(
          color: category.color.withOpacity(0.75),
          width: 2,
        ),
      ),
      margin: const EdgeInsetsDirectional.symmetric(vertical: 7),
      color: category.color.withOpacity(0.1),
      elevation: 0,
      child: InkWell(

        onTap: () {
          onSelectedCategory(category.id);
        },
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Display the image from the category.imageUrl
              Image.asset(
                category.imageUrl,
                height: 80,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 8),
              // Display the text below the image
              Text(
                category.title,
                textAlign: TextAlign.center,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
