// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SettingsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SettingsState()';
}


}

/// @nodoc
class $SettingsStateCopyWith<$Res>  {
$SettingsStateCopyWith(SettingsState _, $Res Function(SettingsState) __);
}


/// @nodoc


class Initial implements SettingsState {
  const Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SettingsState.initial()';
}


}




/// @nodoc


class Loaded implements SettingsState {
  const Loaded({required final  List<Option> options}): _options = options;
  

 final  List<Option> _options;
 List<Option> get options {
  if (_options is EqualUnmodifiableListView) return _options;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_options);
}


/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedCopyWith<Loaded> get copyWith => _$LoadedCopyWithImpl<Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loaded&&const DeepCollectionEquality().equals(other._options, _options));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_options));

@override
String toString() {
  return 'SettingsState.loaded(options: $options)';
}


}

/// @nodoc
abstract mixin class $LoadedCopyWith<$Res> implements $SettingsStateCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) _then) = _$LoadedCopyWithImpl;
@useResult
$Res call({
 List<Option> options
});




}
/// @nodoc
class _$LoadedCopyWithImpl<$Res>
    implements $LoadedCopyWith<$Res> {
  _$LoadedCopyWithImpl(this._self, this._then);

  final Loaded _self;
  final $Res Function(Loaded) _then;

/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? options = null,}) {
  return _then(Loaded(
options: null == options ? _self._options : options // ignore: cast_nullable_to_non_nullable
as List<Option>,
  ));
}


}

/// @nodoc
mixin _$Option {

 String get iconPath; String get title;
/// Create a copy of Option
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OptionCopyWith<Option> get copyWith => _$OptionCopyWithImpl<Option>(this as Option, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Option&&(identical(other.iconPath, iconPath) || other.iconPath == iconPath)&&(identical(other.title, title) || other.title == title));
}


@override
int get hashCode => Object.hash(runtimeType,iconPath,title);

@override
String toString() {
  return 'Option(iconPath: $iconPath, title: $title)';
}


}

/// @nodoc
abstract mixin class $OptionCopyWith<$Res>  {
  factory $OptionCopyWith(Option value, $Res Function(Option) _then) = _$OptionCopyWithImpl;
@useResult
$Res call({
 String iconPath, String title
});




}
/// @nodoc
class _$OptionCopyWithImpl<$Res>
    implements $OptionCopyWith<$Res> {
  _$OptionCopyWithImpl(this._self, this._then);

  final Option _self;
  final $Res Function(Option) _then;

/// Create a copy of Option
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? iconPath = null,Object? title = null,}) {
  return _then(_self.copyWith(
iconPath: null == iconPath ? _self.iconPath : iconPath // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc


class _Option implements Option {
  const _Option({required this.iconPath, required this.title});
  

@override final  String iconPath;
@override final  String title;

/// Create a copy of Option
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OptionCopyWith<_Option> get copyWith => __$OptionCopyWithImpl<_Option>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Option&&(identical(other.iconPath, iconPath) || other.iconPath == iconPath)&&(identical(other.title, title) || other.title == title));
}


@override
int get hashCode => Object.hash(runtimeType,iconPath,title);

@override
String toString() {
  return 'Option(iconPath: $iconPath, title: $title)';
}


}

/// @nodoc
abstract mixin class _$OptionCopyWith<$Res> implements $OptionCopyWith<$Res> {
  factory _$OptionCopyWith(_Option value, $Res Function(_Option) _then) = __$OptionCopyWithImpl;
@override @useResult
$Res call({
 String iconPath, String title
});




}
/// @nodoc
class __$OptionCopyWithImpl<$Res>
    implements _$OptionCopyWith<$Res> {
  __$OptionCopyWithImpl(this._self, this._then);

  final _Option _self;
  final $Res Function(_Option) _then;

/// Create a copy of Option
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? iconPath = null,Object? title = null,}) {
  return _then(_Option(
iconPath: null == iconPath ? _self.iconPath : iconPath // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
