import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:numbers/src/core/core.dart';
import 'package:numbers/src/features/number/number.dart';

import '../../../../../helpers/helpers.dart';

void main() {
  late MockNumbersRepository mockNumbersRepository;
  late GetRandomNumberUseCase sut;

  setUp(() {
    mockNumbersRepository = MockNumbersRepository();
    sut = GetRandomNumberUseCase(repository: mockNumbersRepository);
  });

  void fakeNumberRepositoryResponse(String? info) {
    if (info == null) {
      when(() => mockNumbersRepository.getRandomNumber()).thenAnswer(
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
        () => mockNumbersRepository.getRandomNumber(),
      ).thenAnswer((_) async => DataSuccess(Number(info: info)));
    }
  }

  group(
    'GetRandomNumberUsecase',
    () {
      test(
        'returns DataSuccess that contains an info of a number',
        () {
          const info = 'test';

          fakeNumberRepositoryResponse(info);

          expect(
            sut(),
            completion(const DataSuccess(Number(info: info))),
          );
        },
      );

      test(
        'returns DataFailure when error occurs',
        () {
          fakeNumberRepositoryResponse(null);

          expect(
            sut(),
            completion(isA<DataFailure<Number>>()),
          );
        },
      );
    },
  );
}
