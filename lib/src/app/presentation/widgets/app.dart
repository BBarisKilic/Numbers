import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:numbers/src/app/app.dart';
import 'package:numbers/src/config/config.dart';
import 'package:numbers/src/core/core.dart';
import 'package:numbers/src/features/number/number.dart';
import 'package:numbers/src/features/settings/settings.dart';
import 'package:numbers/src/injector.dart' as di;
import 'package:sizer/sizer.dart';

export '../cubit/app_cubit.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) => Sizer(
        builder: (_, __, ___) => MultiBlocProvider(
          providers: [
            BlocProvider(create: (_) => di.injector<AppCubit>()),
            BlocProvider(create: (_) => di.injector<NumberCubit>()),
            BlocProvider(create: (_) => di.injector<SettingsCubit>()),
          ],
          child: BlocBuilder<AppCubit, AppState>(
            builder: (_, state) => MaterialApp.router(
              debugShowCheckedModeBanner: false,
              title: kAppTitle,
              theme:
                  di.injector<AppTheme>(instanceName: '${state.theme}').getData,
              routeInformationProvider:
                  di.injector<AppRoute>().getRouter.routeInformationProvider,
              routeInformationParser:
                  di.injector<AppRoute>().getRouter.routeInformationParser,
              routerDelegate: di.injector<AppRoute>().getRouter.routerDelegate,
            ),
          ),
        ),
      );
}
