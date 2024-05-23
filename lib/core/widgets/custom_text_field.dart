import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.textEditingController, required this.label,  this.onTap,  this.keyBoardType});
  final TextEditingController textEditingController;
  final String label;
  final TextInputType? keyBoardType;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return  TextField(
        controller: textEditingController,
        onTap: onTap,
        keyboardType: keyBoardType,
        decoration: InputDecoration(

        label: Text(label),

          )
    );
  }
}
