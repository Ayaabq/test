import 'package:flutter/material.dart';

class ProductModel {
  final String imageUrl;
  final String name;
  final String portion;
  final double price;

  ProductModel({
    required this.imageUrl,
    required this.name,
    required this.portion,
    required this.price,
  });
}

List<ProductModel> dummyProducts = [
  ProductModel(
    imageUrl: "assets/images/pro.png",
    name: 'Apple',
    portion: '1 kg',
    price: 3.99,
  ),
  ProductModel(
    imageUrl: "assets/images/pro.png",
    name: 'Banana',
    portion: '1 kg',
    price: 1.99,
  ),
  ProductModel(
    imageUrl: "assets/images/pro.png",
    name: 'Orange',
    portion: '1 kg',
    price: 2.99,
  ),
  ProductModel(
    imageUrl: "assets/images/cat5.png",
    name: 'Strawberry',
    portion: '500 g',
    price: 4.99,
  ),
  ProductModel(
    imageUrl: "assets/images/pro.png",
    name: 'Grapes',
    portion: '1 kg',
    price: 3.49,
  ),
  ProductModel(
    imageUrl: "assets/images/cat6.png",
    name: 'cock',
    portion: '1 piece',
    price: 5.99,
  ),
  ProductModel(
    imageUrl: "assets/images/pro.png",
    name: 'Pineapple',
    portion: '1 piece',
    price: 3.99,
  ),
  ProductModel(
    imageUrl: "assets/images/ca3.png",
    name: 'Blueberry',
    portion: '200 g',
    price: 2.99,
  ),
  ProductModel(
    imageUrl: "assets/images/cat1.png",
    name: 'Mango',
    portion: '1 kg',
    price: 6.99,
  ),
  ProductModel(
    imageUrl: "assets/images/cat6.png",
    name: 'Avocado',
    portion: '500 g',
    price: 4.49,
  ),
];

