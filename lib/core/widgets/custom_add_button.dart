import 'package:flutter/material.dart';

import '../../constants.dart';
class AddButton extends StatelessWidget {
  const AddButton({super.key, required this.onTap});
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: kPrimaryColor,
      ),
      child: IconButton(

        onPressed: onTap,
        icon: const Icon(Icons.add,
        size: 25,),
        color: Colors
            .white, // Set icon color to white or any other contrasting color
      ),
    );
  }
}
