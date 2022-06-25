import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'app/app.dart';
import 'config/config.dart';
import 'core/core.dart';
import 'data/data.dart';
import 'domain/domain.dart';
import 'presentation/presentation.dart';

final injector = GetIt.instance;

Future<void> initializeDependencies() async {
  injector
    ..registerSingleton<AppRoute>(AppRoute())
    ..registerLazySingleton<AppTheme>(
      LightAppThemeImpl.new,
      instanceName: '${AvailableTheme.light}',
    )
    ..registerLazySingleton<AppTheme>(
      DarkAppThemeImpl.new,
      instanceName: '${AvailableTheme.dark}',
    )
    ..registerSingleton<Dio>(Dio())
    ..registerSingleton<NumbersApiService>(
      NumbersApiServiceImpl(dio: injector(), baseUrl: kBaseUrl),
    )
    ..registerSingleton<NumberRepository>(
      NumberRepositoryImpl(service: injector()),
    )
    ..registerSingleton<GetNumberUseCase>(
      GetNumberUseCase(repository: injector()),
    )
    ..registerSingleton<GetRandomNumberUseCase>(
      GetRandomNumberUseCase(repository: injector()),
    )
    ..registerSingleton<TextEditingController>(TextEditingController(text: '0'))
    ..registerFactory<AppCubit>(AppCubit.new)
    ..registerFactory<NumberCubit>(
      () => NumberCubit(
        getNumberUseCase: injector(),
        getRandomNumberUseCase: injector(),
        controller: injector(),
      ),
    )
    ..registerFactory<SettingsCubit>(SettingsCubit.new);
}
