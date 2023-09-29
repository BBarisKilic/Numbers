// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shared_pref_string_request_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SharedPrefStringRequestParams {
  String get key => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SharedPrefStringRequestParamsCopyWith<SharedPrefStringRequestParams>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SharedPrefStringRequestParamsCopyWith<$Res> {
  factory $SharedPrefStringRequestParamsCopyWith(
          SharedPrefStringRequestParams value,
          $Res Function(SharedPrefStringRequestParams) then) =
      _$SharedPrefStringRequestParamsCopyWithImpl<$Res,
          SharedPrefStringRequestParams>;
  @useResult
  $Res call({String key});
}

/// @nodoc
class _$SharedPrefStringRequestParamsCopyWithImpl<$Res,
        $Val extends SharedPrefStringRequestParams>
    implements $SharedPrefStringRequestParamsCopyWith<$Res> {
  _$SharedPrefStringRequestParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SharedPrefStringRequestParamsCopyWith<$Res>
    implements $SharedPrefStringRequestParamsCopyWith<$Res> {
  factory _$$_SharedPrefStringRequestParamsCopyWith(
          _$_SharedPrefStringRequestParams value,
          $Res Function(_$_SharedPrefStringRequestParams) then) =
      __$$_SharedPrefStringRequestParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String key});
}

/// @nodoc
class __$$_SharedPrefStringRequestParamsCopyWithImpl<$Res>
    extends _$SharedPrefStringRequestParamsCopyWithImpl<$Res,
        _$_SharedPrefStringRequestParams>
    implements _$$_SharedPrefStringRequestParamsCopyWith<$Res> {
  __$$_SharedPrefStringRequestParamsCopyWithImpl(
      _$_SharedPrefStringRequestParams _value,
      $Res Function(_$_SharedPrefStringRequestParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
  }) {
    return _then(_$_SharedPrefStringRequestParams(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SharedPrefStringRequestParams
    implements _SharedPrefStringRequestParams {
  const _$_SharedPrefStringRequestParams({required this.key});

  @override
  final String key;

  @override
  String toString() {
    return 'SharedPrefStringRequestParams(key: $key)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SharedPrefStringRequestParams &&
            (identical(other.key, key) || other.key == key));
  }

  @override
  int get hashCode => Object.hash(runtimeType, key);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SharedPrefStringRequestParamsCopyWith<_$_SharedPrefStringRequestParams>
      get copyWith => __$$_SharedPrefStringRequestParamsCopyWithImpl<
          _$_SharedPrefStringRequestParams>(this, _$identity);
}

abstract class _SharedPrefStringRequestParams
    implements SharedPrefStringRequestParams {
  const factory _SharedPrefStringRequestParams({required final String key}) =
      _$_SharedPrefStringRequestParams;

  @override
  String get key;
  @override
  @JsonKey(ignore: true)
  _$$_SharedPrefStringRequestParamsCopyWith<_$_SharedPrefStringRequestParams>
      get copyWith => throw _privateConstructorUsedError;
}
