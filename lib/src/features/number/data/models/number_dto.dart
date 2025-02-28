import 'package:freezed_annotation/freezed_annotation.dart';

part 'number_dto.freezed.dart';
part 'number_dto.g.dart';

@freezed
abstract class NumberDto with _$NumberDto {
  const factory NumberDto({required String info}) = _NumberDto;

  factory NumberDto.fromJson(Map<String, dynamic> json) =>
      _$NumberDtoFromJson(json);
}
