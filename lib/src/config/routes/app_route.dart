import 'package:go_router/go_router.dart';
import 'package:numbers/src/core/core.dart';
import 'package:numbers/src/features/number/number.dart';
import 'package:numbers/src/features/settings/settings.dart';

class AppRoute {
  final _router = GoRouter(
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

  GoRouter get getRouter => _router;
}
