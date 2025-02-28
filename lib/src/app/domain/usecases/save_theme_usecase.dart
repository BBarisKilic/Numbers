import 'package:numbers/src/app/app.dart';
import 'package:numbers/src/core/core.dart';

final class SaveThemeUseCase
    implements UseCase<DataState<void>, SaveThemeParams> {
  const SaveThemeUseCase({required ThemeRepository repository})
    : _themeRepository = repository;

  final ThemeRepository _themeRepository;

  @override
  Future<DataState<void>> call({required SaveThemeParams params}) =>
      _themeRepository.saveTheme(params);
}
