import 'package:go_router/go_router.dart';
import 'package:task/core/widgets/tabs_screen.dart';
import 'package:task/features/home/presentation/views/home_view.dart';
import 'package:task/features/on_boarding/on_boarding.dart';

import '../../features/home/presentation/views/widgets/products_view.dart';

abstract class AppRouter {
  // static const kGetStartedView = "/GetStartedView";
  static const kOnBoarding = '/';
  static const kHomeView ='/HomeView';
  static const kTabView ='/TabView';
  static const kProductView ='/ProductView/:id';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: kOnBoarding,
        builder: (ctx, state) => const OnBoarding(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (ctx, state) => const HomeView(),
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
          return ProductView(categoryId: id!);

        }
      ),


    ],
  );
}
