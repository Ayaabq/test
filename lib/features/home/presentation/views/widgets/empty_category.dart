import 'package:flutter/material.dart';

class EmptyCategory extends StatelessWidget {
  const EmptyCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return   Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children:  [
          Text('uh oh  .. nothing here!',
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                color: Theme.of(context).colorScheme.onBackground),),

          const SizedBox(height: 16,),
          Text('Try selecting a different category!',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Theme.of(context).colorScheme.onBackground),)
        ],
      ),
    );
  }
}
