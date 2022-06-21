import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/core.dart';
import '../../../domain/usecases/get_number_use_case.dart';

part 'number_state.dart';
part 'number_cubit.freezed.dart';

class NumberCubit extends Cubit<NumberState> {
  final GetNumberUseCase _getNumberUseCase;
  late String info;

  NumberCubit({required GetNumberUseCase useCase})
      : _getNumberUseCase = useCase,
        super(const NumberState.initial());

  Future<void> getNumberInfo({required int number}) async {
    emit(const NumberState.loading());

    final dataState = await _getNumberUseCase.call(
      params: NumberRequestParams(number: number),
    );

    if (dataState is DataFailed) {
      emit(const NumberState.error());
      return;
    }

    emit(NumberState.loaded(info: dataState.data!.info));
  }
}
