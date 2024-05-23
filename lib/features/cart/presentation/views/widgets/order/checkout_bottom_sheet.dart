import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:task/core/widgets/custom_button.dart';
import 'package:task/core/widgets/price_text.dart';
import 'package:task/features/cart/data/dummy_orders.dart';
import 'package:task/features/cart/data/models/order_model.dart';
import 'package:task/features/cart/presentation/maneger/cart_provider.dart';
import 'package:task/features/cart/presentation/views/widgets/order/order_section.dart';

import '../../../../../../core/utils/app_router.dart';

class CheckoutBottomSheet extends ConsumerStatefulWidget {
  const CheckoutBottomSheet({super.key});

  @override
   _CheckoutBottomSheetState createState() => _CheckoutBottomSheetState();
}

class _CheckoutBottomSheetState extends ConsumerState<CheckoutBottomSheet> {
  late double totalPrice;
   Delivery selectedDelivery= Delivery.curbsidePickup;
   Payment selectedPayment=Payment.card;

  void changePayment(dynamic value) {
    setState(() {
      selectedPayment = value;
    });
  }

  void changeDelivery(dynamic value) {
    setState(() {
      selectedDelivery = value;
    });
  }
  void onConfirmOrder(){
    final items = ref.read(cartProvider);
    final orderModel= OrderModel(items: items, totalPrice: totalPrice,
        payment: selectedPayment, delivery: selectedDelivery);
    ref.read(cartProvider.notifier).makeOrder(orderModel);
    //print(dummyOrders.length);
    GoRouter.of(context ).push(AppRouter.kOrderAccepted);
  }

  @override
  Widget build(BuildContext context) {
    totalPrice = ref.read(cartProvider.notifier).totalPrice(ref);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 25),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Checkout",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Divider(),
          OrderSection(
            textTitle: "Delivery",
            type: selectedDelivery,
            onChange: changeDelivery,
          ),
          OrderSection(
            textTitle: "Payment",
            type: selectedPayment,
            onChange: changePayment,
          ),
          OrderSection(
            textTitle: "Price",
            label: PriceText(price: totalPrice),
            type: null,
            onChange: (v) {},
          ),
          const Text("By placing an order you agree to our Terms And Conditions"),
          const SizedBox(height: 10),
          CustomButton(
            onTap: onConfirmOrder,
            title: "Order please",
          ),
        ],
      ),
    );
  }
}
