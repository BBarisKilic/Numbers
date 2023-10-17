import 'package:flutter/foundation.dart';
import 'package:numbers/src/core/core.dart';
import 'package:numbers/src/features/number/number.dart';

final class GetNumberUseCase
    implements UseCase<DataState<Number>, GetNumberParams> {
  const GetNumberUseCase({
    required NumbersRepository repository,
  }) : _numbersRepository = repository;

  final NumbersRepository _numbersRepository;

  @override
  Future<DataState<Number>> call({required GetNumberParams params}) =>
      _numbersRepository.getNumber(params);
}

@visibleForTesting
base mixin MockGetNumberUseCaseMixin implements GetNumberUseCase {}
