import 'package:bookly_app/feature/home/presentation/view/book_details_screen.dart';
import 'package:bookly_app/feature/home/presentation/view/home_screen.dart';
import 'package:bookly_app/feature/splash/presentation/view/splach_screen.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeScreen = '/home screen';
  static const kDetailsScreen = '/home details screen';
  static GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) {
          return const SplashScreen();
        },
      ),
      GoRoute(
        path: kHomeScreen,
        builder: (context, state) {
          return const HomeScreen();
        },
      ),
      GoRoute(
        path: kDetailsScreen,
        builder: (context, state) {
          return const BookDetailsScreen();
        },
      ),
    ],
  );
}
