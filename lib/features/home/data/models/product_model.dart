import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class ProductModel {
  final int id;
  final Image image;
  final String name;
  final String portion;
  final double price;
  final int categoryId;

  // Private constructor
  ProductModel._({
    required this.id,
    required this.image,
    required this.name,
    required this.portion,
    required this.price,
    required this.categoryId,
  });

  // Factory constructor
  factory ProductModel({
    int? id,
    required Image image,
    required String name,
    required String portion,
    required double price,
    required int categoryId,
  }) {
    return ProductModel._(
      id: id ?? _generateUniqueId(),
      image: image,
      name: name,
      portion: portion,
      price: price,
      categoryId: categoryId,
    );
  }

  static int _generateUniqueId() {
    int uniqueId;
    do {
      uniqueId = 24 + (const Uuid().v4().hashCode.abs() % 1000000);
    } while (uniqueId <= 23);
    return uniqueId;
  }

  Widget getImageWithFixedSize(double maxWidth, double maxHeight) {
    return SizedBox(
      width: maxWidth,
      height: maxHeight,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: image,
      ),
    );
  }
}
