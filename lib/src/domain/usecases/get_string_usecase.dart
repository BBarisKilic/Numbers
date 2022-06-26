import '../../core/core.dart';
import '../domain.dart';

class GetStringUseCase
    implements UseCase<DataState<String>, SharedPrefStringRequestParams> {
  final SharedPrefRepository _sharedPrefRepository;

  const GetStringUseCase({required SharedPrefRepository repository})
      : _sharedPrefRepository = repository;

  @override
  Future<DataState<String>> call({
    required SharedPrefStringRequestParams params,
  }) =>
      _sharedPrefRepository.getString(params);
}
