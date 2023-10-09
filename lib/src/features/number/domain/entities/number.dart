import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'number.freezed.dart';

@freezed
final class Number with _$Number {
  const factory Number({required String info}) = _Number;
}
