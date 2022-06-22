import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'config/config.dart';
import 'core/core.dart';
import 'data/data.dart';
import 'domain/domain.dart';
import 'presentation/presentation.dart';

final injector = GetIt.instance;

Future<void> initializeDependencies() async {
  injector
    ..registerLazySingleton<AppTheme>(
      LightAppThemeImpl.new,
      instanceName: kLightTheme,
    )
    ..registerLazySingleton<AppTheme>(
      DarkAppThemeImpl.new,
      instanceName: kDarkTheme,
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
    ..registerFactory<NumberCubit>(() => NumberCubit(useCase: injector()));
}
