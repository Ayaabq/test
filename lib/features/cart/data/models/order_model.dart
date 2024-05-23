import 'cart_item_model.dart';

enum Payment { cash, card }

enum Delivery { localDeliveryService, curbsidePickup }

class OrderModel {
  final List<CartItemModel> items;
  final double totalPrice;
  final Payment payment;
  final Delivery delivery;

  OrderModel(
      {required this.items,
      required this.totalPrice,
      required this.payment,
      required this.delivery,
     });
}
