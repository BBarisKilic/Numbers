import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';
import 'package:numbers/src/app/app.dart';
import 'package:numbers/src/config/config.dart';
import 'package:numbers/src/core/core.dart';
import 'package:numbers/src/features/number/number.dart';
import 'package:numbers/src/features/settings/settings.dart';
import 'package:shared_preferences/shared_preferences.dart';

final getIt = GetIt.instance;

class AppBlocObserver extends BlocObserver {
  const AppBlocObserver();

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    log('onChange(${bloc.runtimeType}, $change)');
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    log('onError(${bloc.runtimeType}, $error, $stackTrace)');
    super.onError(bloc, error, stackTrace);
  }
}

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  Bloc.observer = const AppBlocObserver();

  WidgetsFlutterBinding.ensureInitialized();

  // Sets preferred orientation.
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  await setup();

  runApp(await builder());
}

Future<void> setup() async {
  final sharedPreferences = await SharedPreferences.getInstance();

  getIt
    ..registerLazySingleton<AppTheme>(
      () => const LightAppTheme(),
      instanceName: '${AvailableTheme.light}',
    )
    ..registerLazySingleton<AppTheme>(
      () => const DarkAppTheme(),
      instanceName: '${AvailableTheme.dark}',
    )
    ..registerLazySingleton<AppRoute>(() => const AppRoute())
    ..registerLazySingleton<SharedPreferences>(() => sharedPreferences)
    ..registerLazySingleton<Dio>(Dio.new)
    ..registerLazySingleton<TextEditingController>(
      () => TextEditingController(text: '0'),
    )
    ..registerLazySingleton<SharedPrefService>(
      () => SharedPrefServiceImpl(preferences: getIt()),
    )
    ..registerLazySingleton<NumbersApiService>(
      () => NumbersApiServiceImpl(dio: getIt(), baseUrl: Url.numbersApi),
    )
    ..registerLazySingleton<SharedPrefRepository>(
      () => SharedPrefRepositoryImpl(service: getIt()),
    )
    ..registerLazySingleton<NumberRepository>(
      () => NumberRepositoryImpl(service: getIt()),
    )
    ..registerLazySingleton<GetStringUseCase>(
      () => GetStringUseCase(repository: getIt()),
    )
    ..registerLazySingleton<SetStringUseCase>(
      () => SetStringUseCase(repository: getIt()),
    )
    ..registerLazySingleton<GetNumberUseCase>(
      () => GetNumberUseCase(repository: getIt()),
    )
    ..registerLazySingleton<GetRandomNumberUseCase>(
      () => GetRandomNumberUseCase(repository: getIt()),
    )
    ..registerFactory<AppCubit>(
      () => AppCubit(
        getStringUseCase: getIt(),
        setStringUseCase: getIt(),
      ),
    )
    ..registerFactory<NumberCubit>(
      () => NumberCubit(
        getNumberUseCase: getIt(),
        getRandomNumberUseCase: getIt(),
        controller: getIt(),
      ),
    )
    ..registerFactory<SettingsCubit>(SettingsCubit.new);
}
