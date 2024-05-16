class CartModel {
  final String imageUrl;
  final String title;
  int quantity;
  final double price;

  CartModel({
    required this.imageUrl,
    required this.title,
    this.quantity = 1,
    required this.price,
  });
}
