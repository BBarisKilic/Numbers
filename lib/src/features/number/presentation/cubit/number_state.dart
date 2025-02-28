part of 'number_cubit.dart';

@freezed
sealed class NumberState with _$NumberState {
  const factory NumberState.initial() = Initial;
  const factory NumberState.loading() = Loading;
  const factory NumberState.loaded({required String info}) = Loaded;
  const factory NumberState.error() = Error;
}
