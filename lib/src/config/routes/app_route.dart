import 'package:go_router/go_router.dart';

import '../../core/core.dart';
import '../../presentation/presentation.dart';

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
