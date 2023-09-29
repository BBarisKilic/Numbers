// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'number_request_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NumberRequestParams {
  int get number => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NumberRequestParamsCopyWith<NumberRequestParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NumberRequestParamsCopyWith<$Res> {
  factory $NumberRequestParamsCopyWith(
          NumberRequestParams value, $Res Function(NumberRequestParams) then) =
      _$NumberRequestParamsCopyWithImpl<$Res, NumberRequestParams>;
  @useResult
  $Res call({int number});
}

/// @nodoc
class _$NumberRequestParamsCopyWithImpl<$Res, $Val extends NumberRequestParams>
    implements $NumberRequestParamsCopyWith<$Res> {
  _$NumberRequestParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
  }) {
    return _then(_value.copyWith(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NumberRequestParamsCopyWith<$Res>
    implements $NumberRequestParamsCopyWith<$Res> {
  factory _$$_NumberRequestParamsCopyWith(_$_NumberRequestParams value,
          $Res Function(_$_NumberRequestParams) then) =
      __$$_NumberRequestParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int number});
}

/// @nodoc
class __$$_NumberRequestParamsCopyWithImpl<$Res>
    extends _$NumberRequestParamsCopyWithImpl<$Res, _$_NumberRequestParams>
    implements _$$_NumberRequestParamsCopyWith<$Res> {
  __$$_NumberRequestParamsCopyWithImpl(_$_NumberRequestParams _value,
      $Res Function(_$_NumberRequestParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
  }) {
    return _then(_$_NumberRequestParams(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_NumberRequestParams implements _NumberRequestParams {
  const _$_NumberRequestParams({required this.number});

  @override
  final int number;

  @override
  String toString() {
    return 'NumberRequestParams(number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NumberRequestParams &&
            (identical(other.number, number) || other.number == number));
  }

  @override
  int get hashCode => Object.hash(runtimeType, number);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NumberRequestParamsCopyWith<_$_NumberRequestParams> get copyWith =>
      __$$_NumberRequestParamsCopyWithImpl<_$_NumberRequestParams>(
          this, _$identity);
}

abstract class _NumberRequestParams implements NumberRequestParams {
  const factory _NumberRequestParams({required final int number}) =
      _$_NumberRequestParams;

  @override
  int get number;
  @override
  @JsonKey(ignore: true)
  _$$_NumberRequestParamsCopyWith<_$_NumberRequestParams> get copyWith =>
      throw _privateConstructorUsedError;
}
