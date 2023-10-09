import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:numbers/src/core/core.dart';
import 'package:numbers/src/features/number/number.dart';

part 'number_cubit.freezed.dart';
part 'number_state.dart';

final class NumberCubit extends Cubit<NumberState> {
  NumberCubit({
    required GetNumberUseCase getNumberUseCase,
    required GetRandomNumberUseCase getRandomNumberUseCase,
  })  : _getNumberUseCase = getNumberUseCase,
        _getRandomNumberUseCase = getRandomNumberUseCase,
        super(const NumberState.initial());

  final GetNumberUseCase _getNumberUseCase;
  final GetRandomNumberUseCase _getRandomNumberUseCase;

  Future<void> getNumberInfo({required int number}) async {
    emit(const NumberState.loading());

    final dataState =
        await _getNumberUseCase(params: GetNumberParams(number: number));

    switch (dataState) {
      case DataSuccess(data: final number):
        emit(NumberState.loaded(info: number!.info));
      case DataFailure():
        emit(const NumberState.error());
    }
  }

  Future<void> getRandomNumberInfo() async {
    emit(const NumberState.loading());

    final dataState = await _getRandomNumberUseCase();

    switch (dataState) {
      case DataSuccess(data: final number):
        emit(NumberState.loaded(info: number!.info));
      case DataFailure():
        emit(const NumberState.error());
    }
  }
}
