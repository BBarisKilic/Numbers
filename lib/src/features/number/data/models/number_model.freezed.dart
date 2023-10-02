// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'number_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NumberModel _$NumberModelFromJson(Map<String, dynamic> json) {
  return _NumberModel.fromJson(json);
}

/// @nodoc
mixin _$NumberModel {
  String get info => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NumberModelCopyWith<NumberModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NumberModelCopyWith<$Res> {
  factory $NumberModelCopyWith(
          NumberModel value, $Res Function(NumberModel) then) =
      _$NumberModelCopyWithImpl<$Res, NumberModel>;
  @useResult
  $Res call({String info});
}

/// @nodoc
class _$NumberModelCopyWithImpl<$Res, $Val extends NumberModel>
    implements $NumberModelCopyWith<$Res> {
  _$NumberModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_NumberModelCopyWith<$Res>
    implements $NumberModelCopyWith<$Res> {
  factory _$$_NumberModelCopyWith(
          _$_NumberModel value, $Res Function(_$_NumberModel) then) =
      __$$_NumberModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String info});
}

/// @nodoc
class __$$_NumberModelCopyWithImpl<$Res>
    extends _$NumberModelCopyWithImpl<$Res, _$_NumberModel>
    implements _$$_NumberModelCopyWith<$Res> {
  __$$_NumberModelCopyWithImpl(
      _$_NumberModel _value, $Res Function(_$_NumberModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
  }) {
    return _then(_$_NumberModel(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NumberModel extends _NumberModel {
  const _$_NumberModel({required this.info}) : super._();

  factory _$_NumberModel.fromJson(Map<String, dynamic> json) =>
      _$$_NumberModelFromJson(json);

  @override
  final String info;

  @override
  String toString() {
    return 'NumberModel(info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NumberModel &&
            (identical(other.info, info) || other.info == info));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, info);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NumberModelCopyWith<_$_NumberModel> get copyWith =>
      __$$_NumberModelCopyWithImpl<_$_NumberModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NumberModelToJson(
      this,
    );
  }
}

abstract class _NumberModel extends NumberModel {
  const factory _NumberModel({required final String info}) = _$_NumberModel;
  const _NumberModel._() : super._();

  factory _NumberModel.fromJson(Map<String, dynamic> json) =
      _$_NumberModel.fromJson;

  @override
  String get info;
  @override
  @JsonKey(ignore: true)
  _$$_NumberModelCopyWith<_$_NumberModel> get copyWith =>
      throw _privateConstructorUsedError;
}
