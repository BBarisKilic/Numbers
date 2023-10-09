import 'package:numbers/src/core/core.dart';
import 'package:numbers/src/features/number/number.dart';

final class GetNumberUseCase
    implements UseCase<DataState<Number>, GetNumberParams> {
  const GetNumberUseCase({
    required NumberRepository repository,
  }) : _numberRepository = repository;

  final NumberRepository _numberRepository;

  @override
  Future<DataState<Number>> call({required GetNumberParams params}) =>
      _numberRepository.getNumber(params);
}
