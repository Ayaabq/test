import '../../../home/data/models/product_model.dart';

class CartModel {
  final int productId;
  int quantity;

  CartModel({required this.productId, required this.quantity});
}
