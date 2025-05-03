// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_user_password_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChangeUserPasswordRequestModel {

@JsonKey(name: 'old_password') String get oldPassword;@JsonKey(name: 'new_password') String get newPassword;
/// Create a copy of ChangeUserPasswordRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangeUserPasswordRequestModelCopyWith<ChangeUserPasswordRequestModel> get copyWith => _$ChangeUserPasswordRequestModelCopyWithImpl<ChangeUserPasswordRequestModel>(this as ChangeUserPasswordRequestModel, _$identity);

  /// Serializes this ChangeUserPasswordRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangeUserPasswordRequestModel&&(identical(other.oldPassword, oldPassword) || other.oldPassword == oldPassword)&&(identical(other.newPassword, newPassword) || other.newPassword == newPassword));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,oldPassword,newPassword);

@override
String toString() {
  return 'ChangeUserPasswordRequestModel(oldPassword: $oldPassword, newPassword: $newPassword)';
}


}

/// @nodoc
abstract mixin class $ChangeUserPasswordRequestModelCopyWith<$Res>  {
  factory $ChangeUserPasswordRequestModelCopyWith(ChangeUserPasswordRequestModel value, $Res Function(ChangeUserPasswordRequestModel) _then) = _$ChangeUserPasswordRequestModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'old_password') String oldPassword,@JsonKey(name: 'new_password') String newPassword
});




}
/// @nodoc
class _$ChangeUserPasswordRequestModelCopyWithImpl<$Res>
    implements $ChangeUserPasswordRequestModelCopyWith<$Res> {
  _$ChangeUserPasswordRequestModelCopyWithImpl(this._self, this._then);

  final ChangeUserPasswordRequestModel _self;
  final $Res Function(ChangeUserPasswordRequestModel) _then;

/// Create a copy of ChangeUserPasswordRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? oldPassword = null,Object? newPassword = null,}) {
  return _then(_self.copyWith(
oldPassword: null == oldPassword ? _self.oldPassword : oldPassword // ignore: cast_nullable_to_non_nullable
as String,newPassword: null == newPassword ? _self.newPassword : newPassword // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ChangeUserPasswordRequestModel implements ChangeUserPasswordRequestModel {
  const _ChangeUserPasswordRequestModel({@JsonKey(name: 'old_password') required this.oldPassword, @JsonKey(name: 'new_password') required this.newPassword});
  factory _ChangeUserPasswordRequestModel.fromJson(Map<String, dynamic> json) => _$ChangeUserPasswordRequestModelFromJson(json);

@override@JsonKey(name: 'old_password') final  String oldPassword;
@override@JsonKey(name: 'new_password') final  String newPassword;

/// Create a copy of ChangeUserPasswordRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChangeUserPasswordRequestModelCopyWith<_ChangeUserPasswordRequestModel> get copyWith => __$ChangeUserPasswordRequestModelCopyWithImpl<_ChangeUserPasswordRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChangeUserPasswordRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChangeUserPasswordRequestModel&&(identical(other.oldPassword, oldPassword) || other.oldPassword == oldPassword)&&(identical(other.newPassword, newPassword) || other.newPassword == newPassword));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,oldPassword,newPassword);

@override
String toString() {
  return 'ChangeUserPasswordRequestModel(oldPassword: $oldPassword, newPassword: $newPassword)';
}


}

/// @nodoc
abstract mixin class _$ChangeUserPasswordRequestModelCopyWith<$Res> implements $ChangeUserPasswordRequestModelCopyWith<$Res> {
  factory _$ChangeUserPasswordRequestModelCopyWith(_ChangeUserPasswordRequestModel value, $Res Function(_ChangeUserPasswordRequestModel) _then) = __$ChangeUserPasswordRequestModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'old_password') String oldPassword,@JsonKey(name: 'new_password') String newPassword
});




}
/// @nodoc
class __$ChangeUserPasswordRequestModelCopyWithImpl<$Res>
    implements _$ChangeUserPasswordRequestModelCopyWith<$Res> {
  __$ChangeUserPasswordRequestModelCopyWithImpl(this._self, this._then);

  final _ChangeUserPasswordRequestModel _self;
  final $Res Function(_ChangeUserPasswordRequestModel) _then;

/// Create a copy of ChangeUserPasswordRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? oldPassword = null,Object? newPassword = null,}) {
  return _then(_ChangeUserPasswordRequestModel(
oldPassword: null == oldPassword ? _self.oldPassword : oldPassword // ignore: cast_nullable_to_non_nullable
as String,newPassword: null == newPassword ? _self.newPassword : newPassword // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
