import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task/features/home/data/init_products.dart';
import 'package:task/features/home/data/models/product_model.dart';

class ProductsNotifier extends StateNotifier<List<ProductModel>> {

  ProductsNotifier() : super(initProducts);
  List<ProductModel> categoryProducts(int catId, WidgetRef ref){
    print(catId);

    ref.watch(productsProvider);
   return state.where((product) => product.categoryId==catId).toList();
  }


  ProductModel findProduct(int id){
     return state.where((product) => product.id==id).toList()[0];
  }



  addProduct(ProductModel productModel){
    List<ProductModel> temp = List.from(state);
    temp.add(productModel);
    state=temp;
  }
}


final productsProvider =
StateNotifierProvider<ProductsNotifier, List<ProductModel>>((ref) {
  return ProductsNotifier();
});

