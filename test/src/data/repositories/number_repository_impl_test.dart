import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:numbers/src/core/core.dart';
import 'package:numbers/src/data/data.dart';
import 'package:numbers/src/domain/domain.dart';

class MockNumbersApiService extends Mock implements NumbersApiService {}

void main() {
  late MockNumbersApiService mockNumbersApiService;
  late NumberRequestParams numberRequestParams;
  late NumberRepositoryImpl sut;

  setUp(
    () {
      mockNumbersApiService = MockNumbersApiService();
      numberRequestParams = const NumberRequestParams(number: 0);
      sut = NumberRepositoryImpl(service: mockNumbersApiService);
    },
  );

  void arrangeNumbersApiServiceGetNumberResponse() {
    when(() => mockNumbersApiService.getNumber(params: numberRequestParams))
        .thenAnswer((_) async => const NumberModel(info: ''));
  }

  void arrangeNumbersApiServiceGetRandomNumberResponse() {
    when(() => mockNumbersApiService.getRandomNumber())
        .thenAnswer((_) async => const NumberModel(info: ''));
  }

  group(
    'NumberRepositoryImpl',
    () {
      test(
        'calls "getNumber" function only one time',
        () async {
          arrangeNumbersApiServiceGetNumberResponse();

          await sut.getNumber(numberRequestParams);

          verify(
            () => mockNumbersApiService.getNumber(params: numberRequestParams),
          ).called(1);
        },
      );

      test(
        'calls "getRandomNumber" function two times',
        () async {
          arrangeNumbersApiServiceGetRandomNumberResponse();

          await sut.getRandomNumber();
          await sut.getRandomNumber();

          verify(
            () => mockNumbersApiService.getRandomNumber(),
          ).called(2);
        },
      );

      test(
        'gets number from the service',
        () async {
          arrangeNumbersApiServiceGetNumberResponse();

          final result = await sut.getNumber(numberRequestParams);

          expect(
            result,
            equals(DataSuccess(const NumberModel(info: '').toEntity())),
          );
          verify(
            () => mockNumbersApiService.getNumber(params: numberRequestParams),
          );
          verifyNoMoreInteractions(mockNumbersApiService);
        },
      );

      test(
        'gets random number from the service',
        () async {
          arrangeNumbersApiServiceGetRandomNumberResponse();

          final result = await sut.getRandomNumber();

          expect(
            result,
            equals(const DataSuccess(Number(info: ''))),
          );
          verify(
            () => mockNumbersApiService.getRandomNumber(),
          );
          verifyNoMoreInteractions(mockNumbersApiService);
        },
      );
    },
  );
}
