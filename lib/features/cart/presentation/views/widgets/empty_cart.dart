import 'package:flutter/material.dart';

class EmptyCart extends StatelessWidget {
  const EmptyCart({super.key});

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
          Text('You don\'t add any thing to your cart yet!',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Theme.of(context).colorScheme.onBackground),)
        ],
      ),
    );
  }
}
