import 'package:go_router/go_router.dart';
import 'package:task/core/widgets/tabs_screen.dart';
import 'package:task/features/cart/presentation/views/widgets/order/order_accepteed.dart';
import 'package:task/features/on_boarding/on_boarding.dart';
import '../../features/home/presentation/views/widgets/products_view.dart';

abstract class AppRouter {
  static const kOnBoarding = '/';
  static const kTabView ='/TabView';
  static const kProductView ='/ProductView/:id';
  static const kOrderAccepted ='/OrderAccepted';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: kOnBoarding,
        builder: (ctx, state) => const OnBoarding(),
      ),

      GoRoute(
        path: kTabView,
        builder: (ctx, state) => const TabsScreen(),
      ),
      GoRoute(
        path: kProductView,
        builder: (ctx, state) {
          final idStr = state.pathParameters['id']!;
          final id = int.parse(idStr);
          print(idStr);
          return ProductView(categoryId: id);

        }
      ),
      GoRoute(
        path: kOrderAccepted,
        builder: (ctx, state) => const OrderAccepted(),
      ),


    ],
  );
}
