// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'number_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NumberDto _$NumberDtoFromJson(Map<String, dynamic> json) {
  return _NumberDto.fromJson(json);
}

/// @nodoc
mixin _$NumberDto {
  String get info => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NumberDtoCopyWith<NumberDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NumberDtoCopyWith<$Res> {
  factory $NumberDtoCopyWith(NumberDto value, $Res Function(NumberDto) then) =
      _$NumberDtoCopyWithImpl<$Res, NumberDto>;
  @useResult
  $Res call({String info});
}

/// @nodoc
class _$NumberDtoCopyWithImpl<$Res, $Val extends NumberDto>
    implements $NumberDtoCopyWith<$Res> {
  _$NumberDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
  }) {
    return _then(_value.copyWith(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NumberDtoCopyWith<$Res> implements $NumberDtoCopyWith<$Res> {
  factory _$$_NumberDtoCopyWith(
          _$_NumberDto value, $Res Function(_$_NumberDto) then) =
      __$$_NumberDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String info});
}

/// @nodoc
class __$$_NumberDtoCopyWithImpl<$Res>
    extends _$NumberDtoCopyWithImpl<$Res, _$_NumberDto>
    implements _$$_NumberDtoCopyWith<$Res> {
  __$$_NumberDtoCopyWithImpl(
      _$_NumberDto _value, $Res Function(_$_NumberDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
  }) {
    return _then(_$_NumberDto(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NumberDto implements _NumberDto {
  const _$_NumberDto({required this.info});

  factory _$_NumberDto.fromJson(Map<String, dynamic> json) =>
      _$$_NumberDtoFromJson(json);

  @override
  final String info;

  @override
  String toString() {
    return 'NumberDto(info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NumberDto &&
            (identical(other.info, info) || other.info == info));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, info);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NumberDtoCopyWith<_$_NumberDto> get copyWith =>
      __$$_NumberDtoCopyWithImpl<_$_NumberDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NumberDtoToJson(
      this,
    );
  }
}

abstract class _NumberDto implements NumberDto {
  const factory _NumberDto({required final String info}) = _$_NumberDto;

  factory _NumberDto.fromJson(Map<String, dynamic> json) =
      _$_NumberDto.fromJson;

  @override
  String get info;
  @override
  @JsonKey(ignore: true)
  _$$_NumberDtoCopyWith<_$_NumberDto> get copyWith =>
      throw _privateConstructorUsedError;
}
