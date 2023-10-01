import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:numbers/src/core/core.dart';
import 'package:numbers/src/domain/domain.dart';

part 'number_cubit.freezed.dart';
part 'number_state.dart';

class NumberCubit extends Cubit<NumberState> {
  NumberCubit({
    required GetNumberUseCase getNumberUseCase,
    required GetRandomNumberUseCase getRandomNumberUseCase,
    required TextEditingController controller,
  })  : _getNumberUseCase = getNumberUseCase,
        _getRandomNumberUseCase = getRandomNumberUseCase,
        _editingController = controller,
        super(const NumberState.initial());
  final GetNumberUseCase _getNumberUseCase;
  final GetRandomNumberUseCase _getRandomNumberUseCase;
  final TextEditingController _editingController;

  TextEditingController get getEditingController => _editingController;

  Future<void> _getNumberInfo({required int number}) async {
    emit(const NumberState.loading());

    final dataState =
        await _getNumberUseCase(params: NumberRequestParams(number: number));

    if (dataState is DataFailure) {
      emit(const NumberState.error());
      return;
    }

    emit(NumberState.loaded(info: dataState.data!.info));
  }

  Future<void> _getRandomNumberInfo() async {
    emit(const NumberState.loading());

    final dataState = await _getRandomNumberUseCase(params: const NoParams());

    if (dataState is DataFailure) {
      emit(const NumberState.error());
      return;
    }

    emit(NumberState.loaded(info: dataState.data!.info));
  }

  void onPressedNumberButton(BuildContext context, String number) {
    if (_editingController.text.length > 15) return;
    if (_editingController.text == '0') {
      _editingController.text = number;
      return;
    }

    _editingController.text += number;
  }

  void onPressedClearButton() => _editingController.text = '0';

  void onPressedRemoveLastButton() {
    if (_editingController.text.length == 1) {
      _editingController.text = '0';
      return;
    }

    _editingController.text = _editingController.text
        .substring(0, _editingController.text.length - 1);
  }

  void onPressedRandomButton() => _getRandomNumberInfo();

  void onPressedSearchButton() =>
      _getNumberInfo(number: int.parse(_editingController.text));

  void onTapSettingsButton(BuildContext context) =>
      context.push(kSettingsPagePath);
}
