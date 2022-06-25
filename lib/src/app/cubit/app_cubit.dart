import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_state.dart';
part 'app_cubit.freezed.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(const AppState(theme: AvailableTheme.dark));

  void updateTheme(AvailableTheme theme) {
    if (state.theme == theme) return;

    emit(state.copyWith(theme: theme));
  }
}
