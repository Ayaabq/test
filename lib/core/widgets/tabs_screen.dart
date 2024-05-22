import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task/features/cart/presentation/views/cart_view.dart';

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
  @override
  Widget build(BuildContext context) {
    Widget activePage = const HomeViewBody();
    var activePageTitle = "Find Products";
    if (_selectedPageIndex == 1) {
       activePage = const CartView();
       activePageTitle = "My Cart";
    }
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title:  Center(child: Text(activePageTitle)),
      ),
      body: activePage,
        bottomNavigationBar: BottomNavigationBar(
          onTap: _selectPage,
          currentIndex: _selectedPageIndex,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.search_outlined), label: 'Explore'),
            BottomNavigationBarItem(icon: Icon(Icons.add_shopping_cart), label: 'My cart'),
          ],
        )
    );
  }
}
