import 'package:edf3/utils/transactions_screen.dart';
import 'package:edf3/utils/upcoming_payments_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../main.dart';

abstract class AppRouter {
  static const String transactionsScreen = '/transactionsScreen';
  static const String upcomingPaymentsScreen = '/upcomingPaymentsScreen';

  static final router = GoRouter(
    routes: [
      GoRoute(
        // The first screen to be rendered because of it's path '/'.
        path: '/',
        builder: (context, state) => const MainScreen(),
      ),
      GoRoute(
        path: transactionsScreen,
        pageBuilder: (context, state) => buildPageWithDefaultTransition<void>(
          context: context,
          state: state,
          child: const TransactionsScreen(),
        ),
      ),
      GoRoute(
        path: upcomingPaymentsScreen,
        pageBuilder: (context, state) => buildPageWithDefaultTransition<void>(
          context: context,
          state: state,
          child: const UpcomingPaymentsScreen(),
        ),
      ),
    ],
  );
}

CustomTransitionPage buildPageWithDefaultTransition<T>({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) {
  return CustomTransitionPage<T>(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(
        opacity: CurveTween(curve: Curves.linearToEaseOut).animate(animation),
        child: child,
      );
    },
  );
}
