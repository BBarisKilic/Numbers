import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:numbers/src/core/core.dart';
import 'package:numbers/src/domain/domain.dart';

const String _kResponseInfo =
    '0 is the atomic number of the theoretical element tetraneutron.';

class MockNumberRepository extends Mock implements NumberRepository {}

void main() {
  late MockNumberRepository mockNumberRepository;
  late NumberRequestParams numberRequestParams;
  late GetNumberUseCase sut;

  setUp(() {
    mockNumberRepository = MockNumberRepository();
    numberRequestParams = const NumberRequestParams(number: 0);
    sut = GetNumberUseCase(repository: mockNumberRepository);
  });

  arrangeNumberRepositoryReturnData(NumberRequestParams params) {
    when(
      () => mockNumberRepository.getNumber(params),
    ).thenAnswer((_) async => const DataSuccess(Number(info: _kResponseInfo)));
  }

  group(
    'GetNumberUsecase:',
    () {
      test(
        'Calls "getNumber" function only one time.',
        () async {
          arrangeNumberRepositoryReturnData(numberRequestParams);

          await sut(params: numberRequestParams);

          verify(() => mockNumberRepository.getNumber(numberRequestParams))
              .called(1);
        },
      );

      test(
        'Gets data from the repository.',
        () async {
          arrangeNumberRepositoryReturnData(numberRequestParams);

          final result = await sut(params: numberRequestParams);

          expect(result, const DataSuccess(Number(info: _kResponseInfo)));
          verify(() => mockNumberRepository.getNumber(numberRequestParams));
          verifyNoMoreInteractions(mockNumberRepository);
        },
      );
    },
  );
}
