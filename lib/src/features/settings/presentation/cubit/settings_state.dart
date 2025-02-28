part of 'settings_cubit.dart';

@freezed
sealed class SettingsState with _$SettingsState {
  const factory SettingsState.initial() = Initial;
  const factory SettingsState.loaded({required List<Option> options}) = Loaded;
}

@freezed
abstract class Option with _$Option {
  const factory Option({required String iconPath, required String title}) =
      _Option;
}
