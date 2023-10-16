import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:numbers/src/core/core.dart';
import 'package:numbers/src/features/number/number.dart';

import '../../../../../helpers/helpers.dart';

void main() {
  late MockNumbersRepository mockNumbersRepository;
  late GetNumberParams getNumberParams;
  late GetNumberUseCase sut;

  setUpAll(() {
    mockNumbersRepository = MockNumbersRepository();
    getNumberParams = const GetNumberParams(number: 0);
    sut = GetNumberUseCase(repository: mockNumbersRepository);
  });

  void fakeNumberRepositoryResponse(String? info) {
    if (info == null) {
      when(() => mockNumbersRepository.getNumber(getNumberParams)).thenAnswer(
        (_) async => const DataFailure(
          ErrorDetails(
            error: 'error',
            message: 'message',
            stackTrace: 'stackTrace',
          ),
        ),
      );
    } else {
      when(
        () => mockNumbersRepository.getNumber(getNumberParams),
      ).thenAnswer((_) async => DataSuccess(Number(info: info)));
    }
  }

  group(
    'GetNumberUsecase',
    () {
      test(
        'returns DataSuccess that contains an info of a number',
        () {
          const info = 'test';

          fakeNumberRepositoryResponse(info);

          expect(
            sut(params: getNumberParams),
            completion(const DataSuccess(Number(info: info))),
          );
        },
      );

      test(
        'returns DataFailure when error occurs',
        () {
          fakeNumberRepositoryResponse(null);

          expect(
            sut(params: getNumberParams),
            completion(isA<DataFailure<Number>>()),
          );
        },
      );
    },
  );
}
