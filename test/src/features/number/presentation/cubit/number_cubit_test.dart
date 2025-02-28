import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:numbers/src/core/core.dart';
import 'package:numbers/src/features/number/number.dart';

import '../../../../../helpers/helpers.dart';

void main() {
  late MockGetNumberUseCase mockGetNumberUseCase;
  late MockGetRandomNumberUseCase mockGetRandomNumberUseCase;
  late NumberCubit sut;

  setUp(() {
    mockGetNumberUseCase = MockGetNumberUseCase();
    mockGetRandomNumberUseCase = MockGetRandomNumberUseCase();
    sut = NumberCubit(
      getNumberUseCase: mockGetNumberUseCase,
      getRandomNumberUseCase: mockGetRandomNumberUseCase,
    );
  });

  void fakeGetNumberUseCaseResponse(String? info) {
    registerFallbackValue(const GetNumberParams(number: 0));

    if (info == null) {
      when(() => mockGetNumberUseCase(params: any(named: 'params'))).thenAnswer(
        (_) async => const DataFailure<Number>(
          ErrorDetails(
            error: 'error',
            message: 'message',
            stackTrace: 'stackTrace',
          ),
        ),
      );
    } else {
      when(() => mockGetNumberUseCase(params: any(named: 'params'))).thenAnswer(
        (_) async => DataSuccess(Number(info: info)),
      );
    }
  }

  void fakeGetRandomNumberUseCaseResponse(String? info) {
    if (info == null) {
      when(() => mockGetRandomNumberUseCase()).thenAnswer(
        (_) async => const DataFailure<Number>(
          ErrorDetails(
            error: 'error',
            message: 'message',
            stackTrace: 'stackTrace',
          ),
        ),
      );
    } else {
      when(() => mockGetRandomNumberUseCase()).thenAnswer(
        (_) async => DataSuccess(Number(info: info)),
      );
    }
  }

  group('NumberCubit', () {
    test('initial state is correct', () {
      expect(
        sut.state,
        equals(const NumberState.initial()),
      );
    });

    blocTest<NumberCubit, NumberState>(
      'emits correct states when getNumberInfo completes with success',
      setUp: () => fakeGetNumberUseCaseResponse('test'),
      build: () => NumberCubit(
        getNumberUseCase: mockGetNumberUseCase,
        getRandomNumberUseCase: mockGetRandomNumberUseCase,
      ),
      act: (cubit) => cubit.getNumberInfo(number: 0),
      expect: () => [
        const NumberState.loading(),
        const NumberState.loaded(info: 'test'),
      ],
    );

    blocTest<NumberCubit, NumberState>(
      'emits correct states when getNumberInfo completes with failure',
      setUp: () => fakeGetNumberUseCaseResponse(null),
      build: () => NumberCubit(
        getNumberUseCase: mockGetNumberUseCase,
        getRandomNumberUseCase: mockGetRandomNumberUseCase,
      ),
      act: (cubit) => cubit.getNumberInfo(number: 0),
      expect: () => [
        const NumberState.loading(),
        const NumberState.error(),
      ],
    );

    blocTest<NumberCubit, NumberState>(
      'emits correct states when getRandomNumberInfo completes with success',
      setUp: () => fakeGetRandomNumberUseCaseResponse('test'),
      build: () => NumberCubit(
        getNumberUseCase: mockGetNumberUseCase,
        getRandomNumberUseCase: mockGetRandomNumberUseCase,
      ),
      act: (cubit) => cubit.getRandomNumberInfo(),
      expect: () => [
        const NumberState.loading(),
        const NumberState.loaded(info: 'test'),
      ],
    );

    blocTest<NumberCubit, NumberState>(
      'emits correct states when getRandomNumberInfo completes with failure',
      setUp: () => fakeGetRandomNumberUseCaseResponse(null),
      build: () => NumberCubit(
        getNumberUseCase: mockGetNumberUseCase,
        getRandomNumberUseCase: mockGetRandomNumberUseCase,
      ),
      act: (cubit) => cubit.getRandomNumberInfo(),
      expect: () => [
        const NumberState.loading(),
        const NumberState.error(),
      ],
    );
  });
}
