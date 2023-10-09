part of 'number_cubit.dart';

@freezed
sealed class NumberState with _$NumberState {
  const factory NumberState.initial() = _Initial;
  const factory NumberState.loading() = _Loading;
  const factory NumberState.loaded({required String info}) = _Loaded;
  const factory NumberState.error() = _Error;
}
