import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task/features/home/data/dummy_products.dart';
import 'package:task/features/home/data/models/product_model.dart';

class ProductsNotifier extends StateNotifier<List<ProductModel>> {

  ProductsNotifier() : super(dummyProducts);
  List<ProductModel> categoryProducts(int catId){
   return state.where((product) => product.categoryId==catId).toList();
  }
  ProductModel findProduct(int id){
     return state.where((product) => product.id==id).toList()[0];
  }
}


final productsProvider =
StateNotifierProvider<ProductsNotifier, List<ProductModel>>((ref) {
  return ProductsNotifier();
});

