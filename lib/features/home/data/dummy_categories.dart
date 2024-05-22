import 'package:flutter/material.dart';

import 'dummy_products.dart';
import 'models/category_model.dart';

import 'package:flutter/material.dart';


List<CategoryModel> dummyCategoriesData = [
  CategoryModel(
    id: 1,
    color: const Color(0xff53B1751A),
    title: "Fresh Fruits & Vegetables",
    imageUrl: "assets/images/cat1.png",
    items: dummyProducts.sublist(0, 8), // Add relevant products to this category
  ),
  CategoryModel(
    id: 2,
    color: const Color(0xffF8A44C1A),
    title: "Cooking Oil & Ghee",
    imageUrl: "assets/images/cat2.png",
    items: dummyProducts.sublist(8, 11), // Add relevant products to this category
  ),
  CategoryModel(
    id: 3,
    color: const Color(0xffF7A59340),
    title: "Meat & Fish",
    imageUrl: "assets/images/cat3.png",
    items: dummyProducts.sublist(11, 14), // Add relevant products to this category
  ),
  CategoryModel(
    id: 4,
    color: const Color(0xD3B0E040),
    title: "Bakery & Snacks",
    imageUrl: "assets/images/cat4.png",
    items: dummyProducts.sublist(14, 16), // Add relevant products to this category
  ),
  CategoryModel(
    id: 5,
    color: const Color(0xffFDE59840),
    title: "Dairy & Eggs",
    imageUrl: "assets/images/cat5.png",
    items: dummyProducts.sublist(16, 19), // Add relevant products to this category
  ),
  CategoryModel(
    id: 6,
    color: const Color(0xffB7DFF5),
    title: "Beverages",
    imageUrl: "assets/images/cat6.png",
    items: dummyProducts.sublist(19, 22), // Add relevant products to this category
  ),
  CategoryModel(
    id: 7,
    color: const Color(0xff836AF626),
    title: "Category 7",
    imageUrl: "assets/images/cat1.png",
    items: [], // No products for this category
  ),
  CategoryModel(
    id: 8,
    color: const Color(0xffD73B7726),
    title: "Category 8",
    imageUrl: "assets/images/cat1.png",
    items: [], // No products for this category
  ),
];
