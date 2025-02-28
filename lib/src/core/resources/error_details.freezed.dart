// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'error_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ErrorDetails {

 String get error; String get message; String get stackTrace;
/// Create a copy of ErrorDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorDetailsCopyWith<ErrorDetails> get copyWith => _$ErrorDetailsCopyWithImpl<ErrorDetails>(this as ErrorDetails, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ErrorDetails&&(identical(other.error, error) || other.error == error)&&(identical(other.message, message) || other.message == message)&&(identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
}


@override
int get hashCode => Object.hash(runtimeType,error,message,stackTrace);

@override
String toString() {
  return 'ErrorDetails(error: $error, message: $message, stackTrace: $stackTrace)';
}


}

/// @nodoc
abstract mixin class $ErrorDetailsCopyWith<$Res>  {
  factory $ErrorDetailsCopyWith(ErrorDetails value, $Res Function(ErrorDetails) _then) = _$ErrorDetailsCopyWithImpl;
@useResult
$Res call({
 String error, String message, String stackTrace
});




}
/// @nodoc
class _$ErrorDetailsCopyWithImpl<$Res>
    implements $ErrorDetailsCopyWith<$Res> {
  _$ErrorDetailsCopyWithImpl(this._self, this._then);

  final ErrorDetails _self;
  final $Res Function(ErrorDetails) _then;

/// Create a copy of ErrorDetails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? error = null,Object? message = null,Object? stackTrace = null,}) {
  return _then(_self.copyWith(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,stackTrace: null == stackTrace ? _self.stackTrace : stackTrace // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc


class _ErrorDetails implements ErrorDetails {
  const _ErrorDetails({required this.error, required this.message, required this.stackTrace});
  

@override final  String error;
@override final  String message;
@override final  String stackTrace;

/// Create a copy of ErrorDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorDetailsCopyWith<_ErrorDetails> get copyWith => __$ErrorDetailsCopyWithImpl<_ErrorDetails>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorDetails&&(identical(other.error, error) || other.error == error)&&(identical(other.message, message) || other.message == message)&&(identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
}


@override
int get hashCode => Object.hash(runtimeType,error,message,stackTrace);

@override
String toString() {
  return 'ErrorDetails(error: $error, message: $message, stackTrace: $stackTrace)';
}


}

/// @nodoc
abstract mixin class _$ErrorDetailsCopyWith<$Res> implements $ErrorDetailsCopyWith<$Res> {
  factory _$ErrorDetailsCopyWith(_ErrorDetails value, $Res Function(_ErrorDetails) _then) = __$ErrorDetailsCopyWithImpl;
@override @useResult
$Res call({
 String error, String message, String stackTrace
});




}
/// @nodoc
class __$ErrorDetailsCopyWithImpl<$Res>
    implements _$ErrorDetailsCopyWith<$Res> {
  __$ErrorDetailsCopyWithImpl(this._self, this._then);

  final _ErrorDetails _self;
  final $Res Function(_ErrorDetails) _then;

/// Create a copy of ErrorDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? error = null,Object? message = null,Object? stackTrace = null,}) {
  return _then(_ErrorDetails(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,stackTrace: null == stackTrace ? _self.stackTrace : stackTrace // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
