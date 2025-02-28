// ignore_for_file: prefer_const_constructors

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:numbers/src/core/core.dart';
import 'package:numbers/src/features/number/number.dart';

import '../../../../../../helpers/helpers.dart';

void main() {
  late MockDio mockDio;
  late String baseUrl;
  late DioNumbersService sut;

  setUp(() {
    mockDio = MockDio();
    baseUrl = 'testUrl';
    sut = DioNumbersService(dio: mockDio, baseUrl: baseUrl);
  });

  void fakeGetResponse(String? info) {
    if (info == null) {
      when(() => mockDio.get<String>(any())).thenAnswer(
        (_) async => Response(
          statusCode: 500,
          requestOptions: RequestOptions(),
        ),
      );
    } else {
      when(() => mockDio.get<String>(any())).thenAnswer(
        (_) async => Response(
          data: info,
          statusCode: 200,
          requestOptions: RequestOptions(),
        ),
      );
    }
  }

  group('DioNumbersService', () {
    test('is concrete implementation of NumbersService', () {
      expect(
        sut,
        isA<NumbersService>(),
      );
    });

    test('getNumber returns NumberDto', () async {
      const info = 'test';
      const params = GetNumberParams(number: 0);

      fakeGetResponse(info);

      final result = await sut.getNumber(params: params);

      expect(
        result,
        equals(
          NumberDto(
            info: info,
          ),
        ),
      );

      verify(() => mockDio.get<String>('$baseUrl/${params.number}')).called(1);
    });

    test('getNumber throws GetNumberException on non-200 response', () {
      const params = GetNumberParams(number: 0);

      fakeGetResponse(null);

      expect(
        sut.getNumber(params: params),
        throwsA(
          isA<GetNumberException>(),
        ),
      );
    });

    test('getRandomNumber returns NumberDto', () async {
      const info = 'test';

      fakeGetResponse(info);

      final result = await sut.getRandomNumber();

      expect(
        result,
        equals(
          NumberDto(
            info: info,
          ),
        ),
      );

      verify(() => mockDio.get<String>('$baseUrl/random')).called(1);
    });

    test('getRandomNumber throws GetRandomNumberException on non-200 response',
        () {
      fakeGetResponse(null);

      expect(
        sut.getRandomNumber(),
        throwsA(
          isA<GetRandomNumberException>(),
        ),
      );
    });
  });
}
