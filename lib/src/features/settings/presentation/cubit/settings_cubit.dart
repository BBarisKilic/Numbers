import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:numbers/src/core/core.dart';

part 'settings_cubit.freezed.dart';
part 'settings_state.dart';

final class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit() : super(const SettingsState.initial());

  void init() {
    _loadOptions();
  }

  void _loadOptions() {
    const options = <Option>[
      Option(iconPath: kThemeIconPath, title: kThemesText),
      Option(iconPath: kStarIconPath, title: kRateText),
      Option(iconPath: kMailIconPath, title: kContactsText),
      Option(iconPath: kTermsIconPath, title: kTermsText),
      Option(iconPath: kPrivacyIconPath, title: kPrivacyText),
    ];

    emit(const SettingsState.loaded(options: options));
  }
}
