import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../../../core/core.dart';

part 'settings_state.dart';
part 'settings_cubit.freezed.dart';

class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit() : super(const SettingsState.initial()) {
    _loadOptions();
  }

  void _loadOptions() {
    const List<Option> options = [
      Option(iconPath: kThemeIconPath, title: kThemeText),
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
}