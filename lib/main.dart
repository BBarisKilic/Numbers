import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

import 'src/config/config.dart';
import 'src/core/core.dart';
import 'src/injector.dart' as di;
import 'src/presentation/presentation.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await di.initializeDependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Sizer(
        builder: (_, __, ___) => MultiBlocProvider(
          providers: [
            BlocProvider(create: (_) => di.injector<NumberCubit>()),
            BlocProvider(create: (_) => di.injector<SettingsCubit>()),
          ],
          child: MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: kAppTitle,
            theme: di.injector<AppTheme>(instanceName: kDarkTheme).getData,
            routeInformationProvider:
                di.injector<AppRoute>().getRouter.routeInformationProvider,
            routeInformationParser:
                di.injector<AppRoute>().getRouter.routeInformationParser,
            routerDelegate: di.injector<AppRoute>().getRouter.routerDelegate,
          ),
        ),
      );
}
