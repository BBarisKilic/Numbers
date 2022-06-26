// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'shared_pref_set_string_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SharedPrefSetStringParams {
  String get key => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SharedPrefSetStringParamsCopyWith<SharedPrefSetStringParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SharedPrefSetStringParamsCopyWith<$Res> {
  factory $SharedPrefSetStringParamsCopyWith(SharedPrefSetStringParams value,
          $Res Function(SharedPrefSetStringParams) then) =
      _$SharedPrefSetStringParamsCopyWithImpl<$Res>;
  $Res call({String key, String value});
}

/// @nodoc
class _$SharedPrefSetStringParamsCopyWithImpl<$Res>
    implements $SharedPrefSetStringParamsCopyWith<$Res> {
  _$SharedPrefSetStringParamsCopyWithImpl(this._value, this._then);

  final SharedPrefSetStringParams _value;
  // ignore: unused_field
  final $Res Function(SharedPrefSetStringParams) _then;

  @override
  $Res call({
    Object? key = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_SharedPrefSetStringParamsCopyWith<$Res>
    implements $SharedPrefSetStringParamsCopyWith<$Res> {
  factory _$$_SharedPrefSetStringParamsCopyWith(
          _$_SharedPrefSetStringParams value,
          $Res Function(_$_SharedPrefSetStringParams) then) =
      __$$_SharedPrefSetStringParamsCopyWithImpl<$Res>;
  @override
  $Res call({String key, String value});
}

/// @nodoc
class __$$_SharedPrefSetStringParamsCopyWithImpl<$Res>
    extends _$SharedPrefSetStringParamsCopyWithImpl<$Res>
    implements _$$_SharedPrefSetStringParamsCopyWith<$Res> {
  __$$_SharedPrefSetStringParamsCopyWithImpl(
      _$_SharedPrefSetStringParams _value,
      $Res Function(_$_SharedPrefSetStringParams) _then)
      : super(_value, (v) => _then(v as _$_SharedPrefSetStringParams));

  @override
  _$_SharedPrefSetStringParams get _value =>
      super._value as _$_SharedPrefSetStringParams;

  @override
  $Res call({
    Object? key = freezed,
    Object? value = freezed,
  }) {
    return _then(_$_SharedPrefSetStringParams(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SharedPrefSetStringParams implements _SharedPrefSetStringParams {
  const _$_SharedPrefSetStringParams({required this.key, required this.value});

  @override
  final String key;
  @override
  final String value;

  @override
  String toString() {
    return 'SharedPrefSetStringParams(key: $key, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SharedPrefSetStringParams &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_SharedPrefSetStringParamsCopyWith<_$_SharedPrefSetStringParams>
      get copyWith => __$$_SharedPrefSetStringParamsCopyWithImpl<
          _$_SharedPrefSetStringParams>(this, _$identity);
}

abstract class _SharedPrefSetStringParams implements SharedPrefSetStringParams {
  const factory _SharedPrefSetStringParams(
      {required final String key,
      required final String value}) = _$_SharedPrefSetStringParams;

  @override
  String get key => throw _privateConstructorUsedError;
  @override
  String get value => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SharedPrefSetStringParamsCopyWith<_$_SharedPrefSetStringParams>
      get copyWith => throw _privateConstructorUsedError;
}
