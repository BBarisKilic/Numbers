import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:numbers/src/app/app.dart';
import 'package:numbers/src/config/config.dart';
import 'package:numbers/src/core/core.dart';

part 'app_cubit.freezed.dart';
part 'app_state.dart';

final class AppCubit extends Cubit<AppState> {
  AppCubit({
    required GetThemeUseCase getThemeUseCase,
    required SaveThemeUseCase saveThemeUseCase,
  }) : _getThemeUseCase = getThemeUseCase,
       _saveThemeUseCase = saveThemeUseCase,
       super(const AppState(theme: AvailableTheme.dark));

  final GetThemeUseCase _getThemeUseCase;
  final SaveThemeUseCase _saveThemeUseCase;

  void init() {
    _getAppThemeFromSharedPref();
  }

  Future<void> _getAppThemeFromSharedPref() async {
    final dataState = await _getThemeUseCase(
      params: GetThemeParams(key: '$AvailableTheme'),
    );

    switch (dataState) {
      case DataSuccess(data: final theme):
        emit(
          state.copyWith(
            theme:
                theme == AvailableTheme.light.value
                    ? AvailableTheme.light
                    : AvailableTheme.dark,
          ),
        );
      case DataFailure():
        unawaited(_saveAppThemeToSharedPref(state.theme));
    }
  }

  Future<void> _saveAppThemeToSharedPref(AvailableTheme theme) async {
    await _saveThemeUseCase(
      params: SaveThemeParams(key: theme.key, value: theme.value),
    );
  }

  void updateTheme(AvailableTheme theme) {
    if (state.theme == theme) return;

    _saveAppThemeToSharedPref(theme);

    emit(state.copyWith(theme: theme));
  }
}
