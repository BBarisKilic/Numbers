import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/domain.dart';

part 'number_model.freezed.dart';
part 'number_model.g.dart';

@freezed
class NumberModel with _$NumberModel {
  const NumberModel._();

  const factory NumberModel({required String info}) = _NumberModel;

  factory NumberModel.fromJson(Map<String, dynamic> json) =>
      _$NumberModelFromJson(json);

  Number toEntity() => Number(info: info);
}
