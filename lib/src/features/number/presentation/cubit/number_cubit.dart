import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:numbers/src/core/core.dart';
import 'package:numbers/src/features/number/number.dart';

part 'number_cubit.freezed.dart';
part 'number_state.dart';

class NumberCubit extends Cubit<NumberState> {
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
        await _getNumberUseCase(params: NumberRequestParams(number: number));

    if (dataState is DataFailure) {
      emit(const NumberState.error());
      return;
    }

    emit(NumberState.loaded(info: dataState.data!.info));
  }

  Future<void> getRandomNumberInfo() async {
    emit(const NumberState.loading());

    final dataState = await _getRandomNumberUseCase();

    if (dataState is DataFailure) {
      emit(const NumberState.error());
      return;
    }

    emit(NumberState.loaded(info: dataState.data!.info));
  }
}
