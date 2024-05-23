import 'package:flutter/material.dart';

import 'product_model.dart';

class CategoryModel{
  final int id;
  final Color color;
  final String title;
  final String imageUrl;
  final List<ProductModel> items;

  CategoryModel({required this.id, required this.color,
    required this.title, required this.imageUrl,
    required this.items});
}