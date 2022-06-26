import '../../core/core.dart';
import '../domain.dart';

class SetStringUseCase
    implements UseCase<DataState<void>, SharedPrefSetStringParams> {
  final SharedPrefRepository _sharedPrefRepository;

  const SetStringUseCase({required SharedPrefRepository repository})
      : _sharedPrefRepository = repository;

  @override
  Future<DataState<void>> call({required SharedPrefSetStringParams params}) =>
      _sharedPrefRepository.setString(params);
}
