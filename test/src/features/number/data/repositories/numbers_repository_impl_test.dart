import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:numbers/src/core/core.dart';
import 'package:numbers/src/features/number/number.dart';

import '../../../../../helpers/helpers.dart';

void main() {
  late MockNumbersService mockNumbersService;
  late GetNumberParams getNumberParams;
  late NumbersRepositoryImpl sut;

  setUpAll(
    () {
      mockNumbersService = MockNumbersService();
      getNumberParams = const GetNumberParams(number: 0);
      sut = NumbersRepositoryImpl(service: mockNumbersService);
    },
  );

  void fakeGetNumberResponse(String? info) {
    if (info == null) {
      when(() => mockNumbersService.getNumber(params: getNumberParams))
          .thenThrow(const GetNumberException('message', 'stackTrace'));
    } else {
      when(() => mockNumbersService.getNumber(params: getNumberParams))
          .thenAnswer((_) async => NumberDto(info: info));
    }
  }

  void fakeGetRandomNumberResponse(String? info) {
    if (info == null) {
      when(() => mockNumbersService.getRandomNumber())
          .thenThrow(const GetRandomNumberException('message', 'stackTrace'));
    } else {
      when(() => mockNumbersService.getRandomNumber())
          .thenAnswer((_) async => NumberDto(info: info));
    }
  }

  group(
    'NumbersRepositoryImpl',
    () {
      test(
        'getNumber returns DataSuccess that contains an info of a number',
        () {
          const info = 'test_info';

          fakeGetNumberResponse(info);

          expect(
            sut.getNumber(getNumberParams),
            completion(const DataSuccess(Number(info: info))),
          );
        },
      );

      test(
        'getRandomNumber returns DataSuccess that contains an info of a random '
        'number',
        () {
          const info = 'test_info';

          fakeGetRandomNumberResponse(info);

          expect(
            sut.getRandomNumber(),
            completion(const DataSuccess(Number(info: info))),
          );
        },
      );

      test(
        'getNumber returns DataFailure when GetNumberException is thrown',
        () {
          fakeGetNumberResponse(null);

          expect(
            sut.getNumber(getNumberParams),
            completion(isA<DataFailure<Number>>()),
          );
        },
      );

      test(
        'getRandomNumber returns DataFailure when GetRandomNumberException is '
        'thrown',
        () {
          fakeGetRandomNumberResponse(null);

          expect(
            sut.getRandomNumber(),
            completion(isA<DataFailure<Number>>()),
          );
        },
      );
    },
  );
}
