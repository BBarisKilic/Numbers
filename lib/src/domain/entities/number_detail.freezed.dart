// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'number.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Number {
  String get info => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NumberCopyWith<Number> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NumberCopyWith<$Res> {
  factory $NumberCopyWith(Number value, $Res Function(Number) then) =
      _$NumberCopyWithImpl<$Res>;
  $Res call({String info});
}

/// @nodoc
class _$NumberCopyWithImpl<$Res> implements $NumberCopyWith<$Res> {
  _$NumberCopyWithImpl(this._value, this._then);

  final Number _value;
  // ignore: unused_field
  final $Res Function(Number) _then;

  @override
  $Res call({
    Object? info = freezed,
  }) {
    return _then(_value.copyWith(
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_NumberCopyWith<$Res> implements $NumberCopyWith<$Res> {
  factory _$$_NumberCopyWith(_$_Number value, $Res Function(_$_Number) then) =
      __$$_NumberCopyWithImpl<$Res>;
  @override
  $Res call({String info});
}

/// @nodoc
class __$$_NumberCopyWithImpl<$Res> extends _$NumberCopyWithImpl<$Res>
    implements _$$_NumberCopyWith<$Res> {
  __$$_NumberCopyWithImpl(_$_Number _value, $Res Function(_$_Number) _then)
      : super(_value, (v) => _then(v as _$_Number));

  @override
  _$_Number get _value => super._value as _$_Number;

  @override
  $Res call({
    Object? info = freezed,
  }) {
    return _then(_$_Number(
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Number with DiagnosticableTreeMixin implements _Number {
  const _$_Number({required this.info});

  @override
  final String info;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Number(info: $info)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Number'))
      ..add(DiagnosticsProperty('info', info));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Number &&
            const DeepCollectionEquality().equals(other.info, info));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(info));

  @JsonKey(ignore: true)
  @override
  _$$_NumberCopyWith<_$_Number> get copyWith =>
      __$$_NumberCopyWithImpl<_$_Number>(this, _$identity);
}

abstract class _Number implements Number {
  const factory _Number({required final String info}) = _$_Number;

  @override
  String get info => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_NumberCopyWith<_$_Number> get copyWith =>
      throw _privateConstructorUsedError;
}
