// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'number_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NumberDto {

 String get info;
/// Create a copy of NumberDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NumberDtoCopyWith<NumberDto> get copyWith => _$NumberDtoCopyWithImpl<NumberDto>(this as NumberDto, _$identity);

  /// Serializes this NumberDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NumberDto&&(identical(other.info, info) || other.info == info));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,info);

@override
String toString() {
  return 'NumberDto(info: $info)';
}


}

/// @nodoc
abstract mixin class $NumberDtoCopyWith<$Res>  {
  factory $NumberDtoCopyWith(NumberDto value, $Res Function(NumberDto) _then) = _$NumberDtoCopyWithImpl;
@useResult
$Res call({
 String info
});




}
/// @nodoc
class _$NumberDtoCopyWithImpl<$Res>
    implements $NumberDtoCopyWith<$Res> {
  _$NumberDtoCopyWithImpl(this._self, this._then);

  final NumberDto _self;
  final $Res Function(NumberDto) _then;

/// Create a copy of NumberDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? info = null,}) {
  return _then(_self.copyWith(
info: null == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _NumberDto implements NumberDto {
  const _NumberDto({required this.info});
  factory _NumberDto.fromJson(Map<String, dynamic> json) => _$NumberDtoFromJson(json);

@override final  String info;

/// Create a copy of NumberDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NumberDtoCopyWith<_NumberDto> get copyWith => __$NumberDtoCopyWithImpl<_NumberDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NumberDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NumberDto&&(identical(other.info, info) || other.info == info));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,info);

@override
String toString() {
  return 'NumberDto(info: $info)';
}


}

/// @nodoc
abstract mixin class _$NumberDtoCopyWith<$Res> implements $NumberDtoCopyWith<$Res> {
  factory _$NumberDtoCopyWith(_NumberDto value, $Res Function(_NumberDto) _then) = __$NumberDtoCopyWithImpl;
@override @useResult
$Res call({
 String info
});




}
/// @nodoc
class __$NumberDtoCopyWithImpl<$Res>
    implements _$NumberDtoCopyWith<$Res> {
  __$NumberDtoCopyWithImpl(this._self, this._then);

  final _NumberDto _self;
  final $Res Function(_NumberDto) _then;

/// Create a copy of NumberDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? info = null,}) {
  return _then(_NumberDto(
info: null == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
