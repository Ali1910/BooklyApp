import 'package:bookly/Features/Home/presentation/views/BookDetailsveiw.dart';
import 'package:bookly/Features/Home/presentation/views/HomeView.dart';
import 'package:bookly/Features/search/presentation/views/scearchview.dart';
import 'package:go_router/go_router.dart';

import '../../Features/splash/presentation/views/SplashView.dart';

abstract class AppRouter {
  static const kHomeview = '/homeview';
  static const kBookDetailview = '/BookDetailview';
  static const kSearchView = '/searchview';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeview,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailview,
        builder: (context, state) => const BookDetailview(),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const searchview(),
      ),
    ],
  );
}
