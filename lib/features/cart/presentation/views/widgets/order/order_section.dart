import 'package:flutter/material.dart';

import '../../../../data/models/order_model.dart';

class OrderSection extends StatelessWidget {
  const OrderSection({
    super.key,
    required this.textTitle,
    required this.type,
    this.label,
    required this.onChange,
  });

  final String textTitle;
  final Widget? label;
  final dynamic type;
  final void Function(dynamic) onChange;

  @override
  Widget build(BuildContext context) {
    List<DropdownMenuItem>? dropdownValues = [];

    if (type is Payment) {
      dropdownValues = Payment.values
          .map(
            (category) => DropdownMenuItem(
              value: category,
              child: Text(category.name.toUpperCase()),
            ),
          )
          .toList();
    } else {
      dropdownValues = Delivery.values
          .map(
            (category) => DropdownMenuItem(
              value: category,
              child: Text(category.name.toUpperCase()),
            ),
          )
          .toList();
    }

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(textTitle),
            label ??
                DropdownButton(
                  value: type,
                  items: dropdownValues,
                  onChanged: onChange,
                ),
          ],
        ),
        const Divider(),
      ],
    );
  }
}
