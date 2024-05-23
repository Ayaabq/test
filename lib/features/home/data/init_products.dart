import 'package:flutter/material.dart';

import '../../../generated/assets.dart';
import 'models/product_model.dart';


List<ProductModel> initProducts = [
  ProductModel(
    
    image: Image.asset(Assets.imagesCat1),
    name: 'Apple',
    portion: '1 kg',
    price: 3.99,
    categoryId: 1, id: 1,  // Fresh Fruits & Vegetables
  ),
  ProductModel(
    image: Image.asset(Assets.imagesCat2),
    name: 'Banana',
    portion: '1 kg',
    price: 1.99,
    categoryId: 1, id: 2,  // Fresh Fruits & Vegetables
  ),
  ProductModel(
    image: Image.asset(Assets.imagesCat3),
    name: 'Orange',
    portion: '1 kg',
    price: 2.99,
    categoryId: 1, id: 3,  // Fresh Fruits & Vegetables
  ),
  ProductModel(
    image: Image.asset(Assets.imagesCat4),
    name: 'Strawberry',
    portion: '500 g',
    price: 4.99,
    categoryId: 1, id: 4,  // Fresh Fruits & Vegetables
  ),
  ProductModel(
    image: Image.asset(Assets.imagesPro),
    name: 'Grapes',
    portion: '1 kg',
    price: 3.49,
    categoryId: 1, id: 5,  // Fresh Fruits & Vegetables
  ),
  ProductModel(
    image: Image.asset(Assets.imagesPro),
    name: 'Pineapple',
    portion: '1 piece',
    price: 3.99,
    categoryId: 1, id: 6,  // Fresh Fruits & Vegetables
  ),
  ProductModel(
    image: Image.asset(Assets.imagesPro),
    name: 'Blueberry',
    portion: '200 g',
    price: 2.99,
    categoryId: 1, id: 7,  // Fresh Fruits & Vegetables
  ),
  ProductModel(
    image: Image.asset(Assets.imagesCat6),
    name: 'Mango',
    portion: '1 kg',
    price: 6.99,
    categoryId: 1, id: 8,  // Fresh Fruits & Vegetables
  ),
  ProductModel(
    image: Image.asset(Assets.imagesCat1),
    name: 'Avocado',
    portion: '500 g',
    price: 4.49,
    categoryId: 1, id: 9,  // Fresh Fruits & Vegetables
  ),
  ProductModel(
    image: Image.asset(Assets.imagesCat6),
    name: 'Olive Oil',
    portion: '500 ml',
    price: 8.99,
    categoryId: 2, id: 10,  // Cooking Oil & Ghee
  ),
  ProductModel(
    image: Image.asset(Assets.imagesCat4),
    name: 'Sunflower Oil',
    portion: '1 L',
    price: 3.99,
    categoryId: 2, id: 11,  // Cooking Oil & Ghee
  ),
  ProductModel(
    image: Image.asset(Assets.imagesCat1),
    name: 'Butter',
    portion: '250 g',
    price: 2.99,
    categoryId: 2, id: 12,  // Cooking Oil & Ghee
  ),
  ProductModel(
    image: Image.asset(Assets.imagesPro),
    name: 'Chicken Breast',
    portion: '1 kg',
    price: 5.99,
    categoryId: 3, id: 13,  // Meat & Fish
  ),
  ProductModel(
    image: Image.asset(Assets.imagesPro),
    name: 'Salmon',
    portion: '500 g',
    price: 12.99,
    categoryId: 3, id: 14,  // Meat & Fish
  ),
  ProductModel(
    image: Image.asset(Assets.imagesCat1),
    name: 'Beef',
    portion: '1 kg',
    price: 9.99,
    categoryId: 3, id: 15,  // Meat & Fish
  ),
  ProductModel(
    image: Image.asset(Assets.imagesCat3),
    name: 'Bread',
    portion: '1 loaf',
    price: 1.99,
    categoryId: 4, id: 16,  // Bakery & Snacks
  ),
  ProductModel(
    image: Image.asset(Assets.imagesCat4),
    name: 'Cookies',
    portion: '500 g',
    price: 3.99,
    categoryId: 4, id: 17,  // Bakery & Snacks
  ),
  ProductModel(
    image: Image.asset(Assets.imagesCat2),
    name: 'Milk',
    portion: '1 L',
    price: 1.49,
    categoryId: 5, id: 18,  // Dairy & Eggs
  ),
  ProductModel(
    image: Image.asset(Assets.imagesCat5),
    name: 'Eggs',
    portion: '12 pcs',
    price: 2.99,
    categoryId: 5, id: 19,  // Dairy & Eggs
  ),
  ProductModel(
    image: Image.asset(Assets.imagesCat3),
    name: 'Cheese',
    portion: '500 g',
    price: 5.49,
    categoryId: 5, id: 20,  // Dairy & Eggs
  ),
  ProductModel(
    image: Image.asset(Assets.imagesCat2),
    name: 'Orange Juice',
    portion: '1 L',
    price: 3.49,
    categoryId: 6, id: 21,  // Beverages
  ),
  ProductModel(
    image: Image.asset(Assets.imagesPro),
    name: 'Soda',
    portion: '500 ml',
    price: 1.99,
    categoryId: 6, id: 22,  // Beverages
  ),
  ProductModel(
    image: Image.asset(Assets.imagesPro),
    name: 'Mineral Water',
    portion: '1.5 L',
    price: 0.99,
    categoryId: 6, id: 23,  // Beverages
  ),
];
