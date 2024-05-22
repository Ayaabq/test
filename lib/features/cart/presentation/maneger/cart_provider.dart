import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task/features/cart/data/models/cart_model.dart';

class CartNotifier extends StateNotifier<List<CartModel>> {
  CartNotifier() : super([]);
  addToCart(int productId){
    var temp = state;
    bool exists=temp.where((cartModel) => cartModel.productId == productId).toList().isNotEmpty;
    print(exists);
    if(exists){
     for(int i=0; i<temp.length; i++){
              var e =temp[i];
       if(temp[i].productId==productId){
         temp[i]=CartModel(productId: e.productId, quantity: (e.quantity+1));
       }
     }
    }else{
      temp.add(CartModel(productId: productId, quantity: 1));
     
    }
    state=temp;
  }
  deleteFromCart(int productId){
    state=state.where((cartModel) => cartModel.productId != productId).toList();

  }
  decreaseQuantity(int productId){
    var temp=state;
    for(int i=0; i<temp.length; i++){
      var e =temp[i];
      if(temp[i].productId==productId){
        if(e.quantity-1<=0){
          deleteFromCart(productId);
        }
        else {
          temp[i]=CartModel(productId: e.productId, quantity: (e.quantity-1));
        }
      }
  }
    state=temp;
  }

}

final cartProvider =
StateNotifierProvider<CartNotifier, List<CartModel>>((ref) {
  return CartNotifier();
});



