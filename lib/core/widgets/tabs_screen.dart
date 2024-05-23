import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task/features/cart/presentation/views/cart_button.dart';
import 'package:task/features/cart/presentation/views/cart_view_body.dart';

import '../../features/cart/presentation/views/checkout_bottom_sheet.dart';
import '../../features/home/presentation/views/widgets/home_view_body.dart';

class TabsScreen extends ConsumerStatefulWidget {
  const TabsScreen({super.key});

  @override
  ConsumerState<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends ConsumerState<TabsScreen> {
  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  void showCheckoutBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return const CheckoutBottomSheet();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget activePage = const HomeViewBody();
    var activePageTitle = "Find Products";
    if (_selectedPageIndex == 1) {
      activePage = const CartViewBody();
      activePageTitle = "My Cart";
    }
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(child: Text(activePageTitle)),
      ),
      body: activePage,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: _selectedPageIndex == 1
          ? Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: CartButton(
                onBackToAdd: (){
                  setState(() {
                    _selectedPageIndex = 0;
                  });
                  },
                onCheckout: () => showCheckoutBottomSheet(context),
              ),
            )
          : null,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        currentIndex: _selectedPageIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_shopping_cart),
            label: 'My cart',
          ),
        ],
      ),
    );
  }
}
