part of 'app_cubit.dart';

enum AvailableTheme { light, dark }

@freezed
abstract class AppState with _$AppState {
  const factory AppState({
    required AvailableTheme theme,
  }) = _AppState;
}
