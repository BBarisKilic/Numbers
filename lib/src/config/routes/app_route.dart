import 'package:go_router/go_router.dart';
import 'package:numbers/src/core/core.dart';
import 'package:numbers/src/features/number/number.dart';
import 'package:numbers/src/features/settings/settings.dart';

/// {@template app_route}
/// A class that provides the app routes.
/// {@endtemplate}
final class AppRoute {
  /// {@macro app_route}
  const AppRoute();

  static final _router = GoRouter(
    routes: [
      GoRoute(
        path: kNumberPagePath,
        builder: (context, state) => const NumberPage(),
      ),
      GoRoute(
        path: kSettingsPagePath,
        builder: (context, state) => const SettingsPage(),
      ),
    ],
  );

  /// Returns the [GoRouter] instance.
  GoRouter get getRouter => _router;
}
