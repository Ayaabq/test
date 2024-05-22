class ProductModel {
 final int id;
  final String imageUrl;
  final String name;
  final String portion;
  final double price;
  final int categoryId;

  ProductModel(
      {required this.id,required this.imageUrl,
      required this.name,
      required this.portion,
      required this.price,
      required this.categoryId});
}
