import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:numbers/src/app/app.dart';
import 'package:numbers/src/config/config.dart';
import 'package:numbers/src/core/core.dart';

part 'app_cubit.freezed.dart';
part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit({
    required GetStringUseCase getStringUseCase,
    required SetStringUseCase setStringUseCase,
  })  : _getStringUseCase = getStringUseCase,
        _setStringUseCase = setStringUseCase,
        super(const AppState(theme: AvailableTheme.dark));

  final GetStringUseCase _getStringUseCase;
  final SetStringUseCase _setStringUseCase;

  void init() {
    _getAppThemeFromSharedPref();
  }

  Future<void> _getAppThemeFromSharedPref() async {
    final dataState = await _getStringUseCase(
      params: SharedPrefStringRequestParams(key: '$AvailableTheme'),
    );

    if (dataState is DataFailure) return;

    emit(
      state.copyWith(
        theme: dataState.data == '${AvailableTheme.light}'
            ? AvailableTheme.light
            : AvailableTheme.dark,
      ),
    );
  }

  Future<void> _saveAppThemeToSharedPref(AvailableTheme theme) async {
    await _setStringUseCase(
      params: SharedPrefSetStringParams(
        key: '$AvailableTheme',
        value: '$theme',
      ),
    );
  }

  void updateTheme(AvailableTheme theme) {
    if (state.theme == theme) return;

    _saveAppThemeToSharedPref(theme);
    emit(state.copyWith(theme: theme));
  }
}
