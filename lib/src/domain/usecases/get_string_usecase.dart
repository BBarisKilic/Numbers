import 'package:numbers/src/core/core.dart';
import 'package:numbers/src/domain/domain.dart';

class GetStringUseCase
    implements UseCase<DataState<String>, SharedPrefStringRequestParams> {
  const GetStringUseCase({
    required SharedPrefRepository repository,
  }) : _sharedPrefRepository = repository;

  final SharedPrefRepository _sharedPrefRepository;

  @override
  Future<DataState<String>> call({
    required SharedPrefStringRequestParams params,
  }) =>
      _sharedPrefRepository.getString(params);
}
