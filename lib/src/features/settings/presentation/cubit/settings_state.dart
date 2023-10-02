part of 'settings_cubit.dart';

@freezed
abstract class SettingsState with _$SettingsState {
  const factory SettingsState.initial() = _Initial;
  const factory SettingsState.loaded({required List<Option> options}) = _Loaded;
}

@freezed
class Option with _$Option {
  const factory Option({
    required String iconPath,
    required String title,
  }) = _Option;
}
