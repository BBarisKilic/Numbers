// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DataState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DataState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DataState<$T>()';
}


}

/// @nodoc
class $DataStateCopyWith<T,$Res>  {
$DataStateCopyWith(DataState<T> _, $Res Function(DataState<T>) __);
}


/// @nodoc


class DataSuccess<T> implements DataState<T> {
  const DataSuccess(this.data);
  

 final  T data;

/// Create a copy of DataState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DataSuccessCopyWith<T, DataSuccess<T>> get copyWith => _$DataSuccessCopyWithImpl<T, DataSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DataSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'DataState<$T>.dataSuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $DataSuccessCopyWith<T,$Res> implements $DataStateCopyWith<T, $Res> {
  factory $DataSuccessCopyWith(DataSuccess<T> value, $Res Function(DataSuccess<T>) _then) = _$DataSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$DataSuccessCopyWithImpl<T,$Res>
    implements $DataSuccessCopyWith<T, $Res> {
  _$DataSuccessCopyWithImpl(this._self, this._then);

  final DataSuccess<T> _self;
  final $Res Function(DataSuccess<T>) _then;

/// Create a copy of DataState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(DataSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class DataFailure<T> implements DataState<T> {
  const DataFailure(this.details);
  

 final  ErrorDetails details;

/// Create a copy of DataState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DataFailureCopyWith<T, DataFailure<T>> get copyWith => _$DataFailureCopyWithImpl<T, DataFailure<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DataFailure<T>&&(identical(other.details, details) || other.details == details));
}


@override
int get hashCode => Object.hash(runtimeType,details);

@override
String toString() {
  return 'DataState<$T>.dataFailure(details: $details)';
}


}

/// @nodoc
abstract mixin class $DataFailureCopyWith<T,$Res> implements $DataStateCopyWith<T, $Res> {
  factory $DataFailureCopyWith(DataFailure<T> value, $Res Function(DataFailure<T>) _then) = _$DataFailureCopyWithImpl;
@useResult
$Res call({
 ErrorDetails details
});


$ErrorDetailsCopyWith<$Res> get details;

}
/// @nodoc
class _$DataFailureCopyWithImpl<T,$Res>
    implements $DataFailureCopyWith<T, $Res> {
  _$DataFailureCopyWithImpl(this._self, this._then);

  final DataFailure<T> _self;
  final $Res Function(DataFailure<T>) _then;

/// Create a copy of DataState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? details = null,}) {
  return _then(DataFailure<T>(
null == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as ErrorDetails,
  ));
}

/// Create a copy of DataState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ErrorDetailsCopyWith<$Res> get details {
  
  return $ErrorDetailsCopyWith<$Res>(_self.details, (value) {
    return _then(_self.copyWith(details: value));
  });
}
}

// dart format on
