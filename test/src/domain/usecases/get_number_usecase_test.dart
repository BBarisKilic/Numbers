import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:numbers/src/core/core.dart';
import 'package:numbers/src/features/number/domain/domain.dart';

final class MockNumberRepository extends Mock implements NumberRepository {}

void main() {
  late MockNumberRepository mockNumberRepository;
  late GetNumberParams numberRequestParams;
  late GetNumberUseCase sut;

  setUp(() {
    mockNumberRepository = MockNumberRepository();
    numberRequestParams = const GetNumberParams(number: 0);
    sut = GetNumberUseCase(repository: mockNumberRepository);
  });

  group('GetNumberUsecase', () {
    test('calls "getNumber" function only one time', () async {
      when(
        () => mockNumberRepository.getNumber(numberRequestParams),
      ).thenAnswer((_) async => const DataSuccess(Number(info: '')));

      await sut(params: numberRequestParams);

      verify(
        () => mockNumberRepository.getNumber(numberRequestParams),
      ).called(1);
    });

    test('gets data from the repository', () async {
      const info =
          '0 is the atomic number of the theoretical element tetraneutron.';
      when(
        () => mockNumberRepository.getNumber(numberRequestParams),
      ).thenAnswer((_) async => const DataSuccess(Number(info: info)));

      final result = await sut(params: numberRequestParams);

      expect(result, equals(const DataSuccess(Number(info: info))));
      verify(() => mockNumberRepository.getNumber(numberRequestParams));
      verifyNoMoreInteractions(mockNumberRepository);
    });
  });
}
