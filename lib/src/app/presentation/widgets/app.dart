import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:numbers/bootstrap.dart';
import 'package:numbers/src/app/app.dart';
import 'package:numbers/src/config/config.dart';
import 'package:numbers/src/core/core.dart';

export '../cubit/app_cubit.dart';

class App extends StatelessWidget {
  const App({super.key});

  /// The title of the app.
  static const _kAppTitle = 'Numbers';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<AppCubit>()..init(),
      child: BlocBuilder<AppCubit, AppState>(
        builder: (context, state) {
          return MaterialApp.router(
            title: _kAppTitle,
            debugShowCheckedModeBanner: false,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            theme: getIt<AppTheme>(instanceName: '${state.theme}').getData,
            routeInformationProvider:
                getIt<AppRoute>().getRouter.routeInformationProvider,
            routeInformationParser:
                getIt<AppRoute>().getRouter.routeInformationParser,
            routerDelegate: getIt<AppRoute>().getRouter.routerDelegate,
          );
        },
      ),
    );
  }
}
