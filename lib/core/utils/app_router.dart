import 'package:go_router/go_router.dart';
import 'package:task/core/widgets/tabs_screen.dart';
import 'package:task/features/home/home_view.dart';
import 'package:task/features/home/views/products_view.dart';
import 'package:task/features/on_boarding/on_boarding.dart';

abstract class AppRouter {
  // static const kGetStartedView = "/GetStartedView";
  static const kOnBoarding = '/';
  static const kHomeView ='/HomeView';
  static const kTabView ='/TabView';
  static const kProductView ='/ProductView';
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
        builder: (ctx, state) => const ProductView(),
      ),


    ],
  );
}
