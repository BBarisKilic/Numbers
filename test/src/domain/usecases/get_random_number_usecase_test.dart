import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:numbers/src/core/core.dart';
import 'package:numbers/src/domain/domain.dart';

class MockNumberRepository extends Mock implements NumberRepository {}

void main() {
  late MockNumberRepository mockNumberRepository;
  late NoParams noParams;
  late GetRandomNumberUseCase sut;

  setUp(() {
    mockNumberRepository = MockNumberRepository();
    noParams = const NoParams();
    sut = GetRandomNumberUseCase(repository: mockNumberRepository);
  });

  arrangeNumberRepositoryReturnData() {
    when(mockNumberRepository.getRandomNumber).thenAnswer(
      (_) async => const DataFailure(Failure(title: '', message: '')),
    );
  }

  group(
    'GetRandomNumberUseCase:',
    () {
      test(
        'Calls "getRandomNumber" function only one time.',
        () async {
          arrangeNumberRepositoryReturnData();

          await sut(params: noParams);

          verify(mockNumberRepository.getRandomNumber).called(1);
        },
      );

      test(
        'Gets failure from the repository.',
        () async {
          arrangeNumberRepositoryReturnData();

          final result = await sut(params: noParams);

          expect(result.failure, const Failure(title: '', message: ''));
          verify(mockNumberRepository.getRandomNumber);
          verifyNoMoreInteractions(mockNumberRepository);
        },
      );
    },
  );
}
