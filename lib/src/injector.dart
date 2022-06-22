import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'core/core.dart';
import 'data/data.dart';
import 'domain/domain.dart';
import 'domain/usecases/get_number_usecase.dart';
import 'presentation/number/cubit/number_cubit.dart';

final injector = GetIt.instance;

Future<void> initializeDependencies() async {
  injector
    ..registerSingleton<Dio>(Dio())
    ..registerSingleton<NumbersApiService>(
      NumbersApiServiceImpl(injector(), baseUrl: kBaseUrl),
    )
    ..registerSingleton<NumberRepository>(
      NumberRepositoryImpl(service: injector()),
    )
    ..registerSingleton<GetNumberUseCase>(
      GetNumberUseCase(repository: injector()),
    )
    ..registerFactory<NumberCubit>(() => NumberCubit(useCase: injector()));
}
