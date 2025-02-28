import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:numbers/src/core/core.dart';
import 'package:numbers/src/features/number/data/data.dart';
import 'package:numbers/src/features/number/domain/domain.dart';

final class MockNumbersService extends Mock implements NumbersService {}

void main() {
  late MockNumbersService mockNumbersService;
  late GetNumberParams numberRequestParams;
  late NumberRepositoryImpl sut;

  setUp(() {
    mockNumbersService = MockNumbersService();
    numberRequestParams = const GetNumberParams(number: 0);
    sut = NumberRepositoryImpl(service: mockNumbersService);
  });

  group('NumberRepositoryImpl', () {
    test('gets number from the service', () async {
      const info = 'Info about number';
      when(
        () => mockNumbersService.getNumber(params: numberRequestParams),
      ).thenAnswer((_) async => const NumberDto(info: info));

      final result = await sut.getNumber(numberRequestParams);
      expect(result, equals(const DataSuccess(Number(info: info))));
      verify(() => mockNumbersService.getNumber(params: numberRequestParams));
      verifyNoMoreInteractions(mockNumbersService);
    });

    test('gets random number from the service', () async {
      const info = 'Info about number';
      when(
        () => mockNumbersService.getRandomNumber(),
      ).thenAnswer((_) async => const NumberDto(info: info));

      final result = await sut.getRandomNumber();

      expect(result, equals(const DataSuccess(Number(info: info))));
      verify(() => mockNumbersService.getRandomNumber());
      verifyNoMoreInteractions(mockNumbersService);
    });
  });
}
