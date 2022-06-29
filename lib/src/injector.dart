import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app/app.dart';
import 'config/config.dart';
import 'core/core.dart';
import 'data/data.dart';
import 'domain/domain.dart';
import 'presentation/presentation.dart';

final injector = GetIt.instance;

Future<void> initializeDependencies() async {
  final sharedPreferences = await SharedPreferences.getInstance();

  injector
    ..registerLazySingleton<AppTheme>(
      LightAppThemeImpl.new,
      instanceName: '${AvailableTheme.light}',
    )
    ..registerLazySingleton<AppTheme>(
      DarkAppThemeImpl.new,
      instanceName: '${AvailableTheme.dark}',
    )
    ..registerSingleton<AppRoute>(AppRoute())
    ..registerSingleton<SharedPreferences>(sharedPreferences)
    ..registerSingleton<Dio>(Dio())
    ..registerSingleton<TextEditingController>(TextEditingController(text: '0'))
    ..registerSingleton<SharedPrefService>(
      SharedPrefServiceImpl(preferences: injector()),
    )
    ..registerSingleton<NumbersApiService>(
      NumbersApiServiceImpl(dio: injector(), baseUrl: kBaseUrl),
    )
    ..registerSingleton<SharedPrefRepository>(
      SharedPrefRepositoryImpl(service: injector()),
    )
    ..registerSingleton<NumberRepository>(
      NumberRepositoryImpl(service: injector()),
    )
    ..registerSingleton<GetStringUseCase>(
      GetStringUseCase(repository: injector()),
    )
    ..registerSingleton<SetStringUseCase>(
      SetStringUseCase(repository: injector()),
    )
    ..registerSingleton<GetNumberUseCase>(
      GetNumberUseCase(repository: injector()),
    )
    ..registerSingleton<GetRandomNumberUseCase>(
      GetRandomNumberUseCase(repository: injector()),
    )
    ..registerFactory<AppCubit>(
      () => AppCubit(
        getStringUseCase: injector(),
        setStringUseCase: injector(),
      ),
    )
    ..registerFactory<NumberCubit>(
      () => NumberCubit(
        getNumberUseCase: injector(),
        getRandomNumberUseCase: injector(),
        controller: injector(),
      ),
    )
    ..registerFactory<SettingsCubit>(SettingsCubit.new);
}
