import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:numbers/src/app/app.dart';
import 'package:numbers/src/config/config.dart';
import 'package:numbers/src/core/core.dart';
import 'package:numbers/src/features/number/number.dart';
import 'package:numbers/src/features/settings/settings.dart';
import 'package:shared_preferences/shared_preferences.dart';

final injector = GetIt.instance;

Future<void> initializeDependencies() async {
  final sharedPreferences = await SharedPreferences.getInstance();

  injector
    ..registerLazySingleton<AppTheme>(
      LightAppTheme.new,
      instanceName: '${AvailableTheme.light}',
    )
    ..registerLazySingleton<AppTheme>(
      DarkAppTheme.new,
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
