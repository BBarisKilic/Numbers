part of 'app_cubit.dart';

@freezed
abstract class AppState with _$AppState {
  const factory AppState({
    required AvailableTheme theme,
  }) = _AppState;
}
