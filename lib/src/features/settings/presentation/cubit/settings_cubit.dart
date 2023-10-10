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
    final options = <Option>[
      Option(iconPath: Assets.images.theme, title: kThemesText),
      Option(iconPath: Assets.images.star, title: kRateText),
      Option(iconPath: Assets.images.mail, title: kContactsText),
      Option(iconPath: Assets.images.terms, title: kTermsText),
      Option(iconPath: Assets.images.privacy, title: kPrivacyText),
    ];

    emit(SettingsState.loaded(options: options));
  }
}
