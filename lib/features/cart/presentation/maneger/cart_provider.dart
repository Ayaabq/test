import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task/features/cart/data/dummy_orders.dart';
import 'package:task/features/cart/data/models/cart_item_model.dart';
import 'package:task/features/cart/data/models/order_model.dart';
import 'package:task/features/home/presentation/maneger/product_provider.dart';

class CartNotifier extends StateNotifier<List<CartItemModel>> {
  CartNotifier() : super([]);
  addToCart(int productId) {
    List<CartItemModel> temp = List.from(state);

    bool exists = temp
        .where((cartModel) => cartModel.productId == productId)
        .toList()
        .isNotEmpty;
    if (exists) {
      for (int i = 0; i < temp.length; i++) {
        var e = temp[i];
        if (temp[i].productId == productId) {
          temp[i] =
              CartItemModel(productId: e.productId, quantity: (e.quantity + 1));
        }
      }
    } else {
      temp.add(CartItemModel(productId: productId, quantity: 1));
    }
    state = temp;
  }

  deleteFromCart(int productId) {
    state= state.where((cartModel) => cartModel.productId != productId).toList();


  }

  decreaseQuantity(int productId) {
    List<CartItemModel> temp = List.from(state);
    for (int i = 0; i < temp.length; i++) {
      var e = temp[i];
      if (e.productId == productId) {
        if (e.quantity - 1 <= 0) {
          deleteFromCart(productId);
        } else {
          temp[i] =
              CartItemModel(productId: e.productId, quantity: (e.quantity - 1));
          state = temp;
        }
      }
    }

  }

  double totalPrice(WidgetRef ref) {
     ref.watch(cartProvider);
    double total = 0;
    for (CartItemModel item in state) {
      var productPrice =
          ref.read(productsProvider.notifier).findProduct(item.productId).price;
      total += item.quantity * productPrice;
    }

    return total;
  }

  makeOrder(OrderModel orderModel){
    dummyOrders.add(orderModel);
    state=[];
  }
}

final cartProvider =
    StateNotifierProvider<CartNotifier, List<CartItemModel>>((ref) {
  return CartNotifier();
});
