import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:sharp_toggle_switch/sharp_toggle_switch.dart';

import '../../../app/app.dart';
import '../../../config/config.dart';
import '../../../core/core.dart';

part 'settings_cubit.freezed.dart';
part 'settings_state.dart';

class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit() : super(const SettingsState.initial()) {
    _loadOptions();
  }

  void _loadOptions() {
    const List<Option> options = [
      Option(iconPath: kThemeIconPath, title: kThemesText),
      Option(iconPath: kStarIconPath, title: kRateText),
      Option(iconPath: kMailIconPath, title: kContactsText),
      Option(iconPath: kTermsIconPath, title: kTermsText),
      Option(iconPath: kPrivacyIconPath, title: kPrivacyText),
    ];

    emit(const SettingsState.loaded(options: options));
  }

  Future<void> onTapListTile({
    required BuildContext context,
    required int index,
    required Widget theme,
  }) async {
    switch (index) {
      case 0:
        await _callThemeBottomSheet(context: context, child: theme);
        break;
      default:
        break;
    }
  }

  Future<void> _callThemeBottomSheet({
    required BuildContext context,
    required Widget child,
  }) async {
    await showCupertinoModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      useRootNavigator: true,
      elevation: 4.0,
      topRadius: Radius.zero,
      builder: (context) => child,
    );
  }

  void onTapBackButton(BuildContext context) => context.pop();

  void onTapCloseButton(BuildContext context) => Navigator.pop(context);

  void onToggleThemeSwitch(
    BuildContext context,
    SwitchPosition position,
  ) {
    if (position == SwitchPosition.left) {
      context.read<AppCubit>().updateTheme(AvailableTheme.light);
      return;
    }

    context.read<AppCubit>().updateTheme(AvailableTheme.dark);
  }
}
