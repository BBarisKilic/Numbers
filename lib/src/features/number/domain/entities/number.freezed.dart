// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'number.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Number implements DiagnosticableTreeMixin {

 String get info;
/// Create a copy of Number
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NumberCopyWith<Number> get copyWith => _$NumberCopyWithImpl<Number>(this as Number, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Number'))
    ..add(DiagnosticsProperty('info', info));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Number&&(identical(other.info, info) || other.info == info));
}


@override
int get hashCode => Object.hash(runtimeType,info);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Number(info: $info)';
}


}

/// @nodoc
abstract mixin class $NumberCopyWith<$Res>  {
  factory $NumberCopyWith(Number value, $Res Function(Number) _then) = _$NumberCopyWithImpl;
@useResult
$Res call({
 String info
});




}
/// @nodoc
class _$NumberCopyWithImpl<$Res>
    implements $NumberCopyWith<$Res> {
  _$NumberCopyWithImpl(this._self, this._then);

  final Number _self;
  final $Res Function(Number) _then;

/// Create a copy of Number
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? info = null,}) {
  return _then(_self.copyWith(
info: null == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc


class _Number with DiagnosticableTreeMixin implements Number {
  const _Number({required this.info});
  

@override final  String info;

/// Create a copy of Number
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NumberCopyWith<_Number> get copyWith => __$NumberCopyWithImpl<_Number>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Number'))
    ..add(DiagnosticsProperty('info', info));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Number&&(identical(other.info, info) || other.info == info));
}


@override
int get hashCode => Object.hash(runtimeType,info);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Number(info: $info)';
}


}

/// @nodoc
abstract mixin class _$NumberCopyWith<$Res> implements $NumberCopyWith<$Res> {
  factory _$NumberCopyWith(_Number value, $Res Function(_Number) _then) = __$NumberCopyWithImpl;
@override @useResult
$Res call({
 String info
});




}
/// @nodoc
class __$NumberCopyWithImpl<$Res>
    implements _$NumberCopyWith<$Res> {
  __$NumberCopyWithImpl(this._self, this._then);

  final _Number _self;
  final $Res Function(_Number) _then;

/// Create a copy of Number
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? info = null,}) {
  return _then(_Number(
info: null == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
