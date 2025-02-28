import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:numbers/src/core/core.dart';
import 'package:numbers/src/features/number/domain/domain.dart';

final class MockNumberRepository extends Mock implements NumberRepository {}

void main() {
  late MockNumberRepository mockNumberRepository;
  late Params params;
  late GetRandomNumberUseCase sut;

  setUp(() {
    mockNumberRepository = MockNumberRepository();
    params = const Params();
    sut = GetRandomNumberUseCase(repository: mockNumberRepository);
  });

  group('GetRandomNumberUseCase', () {
    test('gets failure from the repository', () async {
      const error = 'Error';
      const message = 'Message';
      const stackTrace = 'StackTrace';
      when(mockNumberRepository.getRandomNumber).thenAnswer(
        (_) async => const DataFailure(
          ErrorDetails(error: error, message: message, stackTrace: stackTrace),
        ),
      );

      final result = await sut(params: params);

      expect(
        result,
        equals(
          const DataFailure<Number>(
            ErrorDetails(
              error: error,
              message: message,
              stackTrace: stackTrace,
            ),
          ),
        ),
      );
      verify(mockNumberRepository.getRandomNumber);
      verifyNoMoreInteractions(mockNumberRepository);
    });
  });
}
