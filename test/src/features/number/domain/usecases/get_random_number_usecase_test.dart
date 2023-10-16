import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:numbers/src/core/core.dart';
import 'package:numbers/src/features/number/number.dart';

import '../../../../../helpers/helpers.dart';

void main() {
  late MockNumberRepository mockNumberRepository;
  late GetRandomNumberUseCase sut;

  setUp(() {
    mockNumberRepository = MockNumberRepository();
    sut = GetRandomNumberUseCase(repository: mockNumberRepository);
  });

  void fakeNumberRepositoryResponse(String? info) {
    if (info == null) {
      when(() => mockNumberRepository.getRandomNumber()).thenAnswer(
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
        () => mockNumberRepository.getRandomNumber(),
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
