import 'package:numbers/src/app/app.dart';
import 'package:numbers/src/core/core.dart';

final class GetThemeUseCase
    implements UseCase<DataState<String>, GetThemeParams> {
  const GetThemeUseCase({
    required ThemeRepository repository,
  }) : _themeRepository = repository;

  final ThemeRepository _themeRepository;

  @override
  Future<DataState<String>> call({required GetThemeParams params}) =>
      _themeRepository.getTheme(params);
}
