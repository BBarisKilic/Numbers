import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:numbers/src/core/core.dart';

part 'settings_cubit.freezed.dart';
part 'settings_state.dart';

final class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit() : super(const SettingsState.initial());

  void init(AppLocalizations l10n) {
    _loadOptions(l10n);
  }

  void _loadOptions(AppLocalizations l10n) {
    final options = <Option>[
      Option(
        iconPath: Assets.images.theme,
        title: l10n.themeOptions,
      ),
      Option(
        iconPath: Assets.images.star,
        title: l10n.rateUs,
      ),
      Option(
        iconPath: Assets.images.mail,
        title: l10n.contactUs,
      ),
      Option(
        iconPath: Assets.images.terms,
        title: l10n.termsAndConditions,
      ),
      Option(
        iconPath: Assets.images.privacy,
        title: l10n.privacyPolicy,
      ),
    ];

    emit(SettingsState.loaded(options: options));
  }
}
