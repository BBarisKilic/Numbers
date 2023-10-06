import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:numbers/bootstrap.dart';
import 'package:numbers/src/app/app.dart';
import 'package:numbers/src/config/config.dart';
import 'package:numbers/src/core/core.dart';
import 'package:numbers/src/features/number/number.dart';

export '../cubit/app_cubit.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<AppCubit>()..init()),
        BlocProvider(create: (_) => getIt<NumberCubit>()),
      ],
      child: BlocBuilder<AppCubit, AppState>(
        builder: (context, state) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: kAppTitle,
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
