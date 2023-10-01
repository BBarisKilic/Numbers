import 'package:numbers/src/core/core.dart';
import 'package:numbers/src/domain/domain.dart';

class SetStringUseCase
    implements UseCase<DataState<void>, SharedPrefSetStringParams> {
  const SetStringUseCase({required SharedPrefRepository repository})
      : _sharedPrefRepository = repository;
  final SharedPrefRepository _sharedPrefRepository;

  @override
  Future<DataState<void>> call({required SharedPrefSetStringParams params}) =>
      _sharedPrefRepository.setString(params);
}
